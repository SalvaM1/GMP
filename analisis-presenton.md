# Análisis de Presenton para la presentación de E-MOVE

Repositorio analizado: <https://github.com/presenton/presenton> — commit `44c8a61`
(12/10/2026, rama `main`), licencia Apache 2.0. Análisis hecho sobre un clon local
del repositorio, no sobre una instalación corriendo (ver "Qué quedó sin probar").

## 1. Qué es

Generador de presentaciones con IA, open source. A partir de un prompt, un documento
o un PPTX propio, un modelo de lenguaje arma las diapositivas sobre una plantilla y
exporta **PPTX editable o PDF**. Se usa de tres maneras:

- **Docker** (la más simple):
  ```bash
  docker run -it --name presenton -p 5001:80 -v "./app_data:/app_data" \
    ghcr.io/presenton/presenton:latest
  # abrir http://localhost:5001
  ```
- **App de escritorio** (Electron: Windows, macOS, Linux).
- **Desde el código** (Node LTS + Python 3.11 + `uv`).

## 2. Cómo está armado

| Carpeta | Qué hay |
|---|---|
| `servers/fastapi` | Backend Python (FastAPI). Rutas `/api/v1/ppt/...` y `/api/v2/ppt/...`, más un servidor MCP (`mcp_server.py`). |
| `servers/nextjs` | Interfaz web y editor de diapositivas (Next.js + Tailwind). |
| `electron/` | App de escritorio. |
| `templates/<nombre>/` | 16 plantillas: `template.json` + `static/`. Lienzo fijo de **1280×720**. |
| `docs/` | `template-v2.md`, `presentation-generation-modes.md`, `amazon-bedrock.md`, `presenton-resource-usage.md`. |

**Exportación**: el backend no arma el PPTX por su cuenta. Levanta la página
`/pdf-maker?id=<uuid>` del front y la procesa con un paquete aparte,
`@presenton/export-core`, que viene dentro de la imagen de Docker y de la app de
escritorio (`servers/nextjs/lib/run-bundled-presentation-export.ts`). Es decir: el
PPTX sale de renderizar HTML en un navegador headless. Si se corre desde el código
sin ese paquete, la exportación no funciona.

## 3. Dos modos de generación

Se eligen con la variable `PRESENTATION_GENERATION_MODE` (`both` por defecto):

- **`standard`**: diseños fijos de una plantilla, con paso de revisión del esquema.
  Es el que sirve para nuestro caso, porque permite elegir plantilla.
- **`smart`**: diseños adaptativos generados al vuelo, sin plantillas.

## 4. API que nos interesa

Todo bajo `http://localhost:5001/api/v1/ppt/presentation`:

| Endpoint | Para qué |
|---|---|
| `POST /generate` | Genera **y exporta** en una sola llamada (devuelve `path` y `edit_path`). |
| `POST /generate/async` + `GET /status/{id}` | Igual, pero en segundo plano (conviene: 11 diapositivas tardan varios minutos). |
| `POST /{id}/export` | Vuelve a exportar una presentación ya generada (`pptx` o `pdf`), sin regenerarla. |
| `PATCH /slide_update` | Cambia una diapositiva a mano (contenido y `ui`). |
| `PATCH /update` | Reemplaza el conjunto de diapositivas de una presentación. |
| `POST /create/blank` | Crea una presentación vacía con una diapositiva en blanco. |

Cuerpo de `POST /generate` (`servers/fastapi/models/generate_presentation_request.py`):

`content` (obligatorio), `slides_markdown: List[str]` (una entrada por diapositiva),
`instructions`, `tone` (`default|casual|professional|funny|educational|sales_pitch`),
`verbosity` (`concise|standard|text-heavy`), `n_slides`, `language`,
`template` (por defecto `general`), `include_title_slide`,
`include_table_of_contents`, `files`, `web_search`, `export_as` (`pptx|pdf`).

## 5. Hallazgos que cambian cómo lo usamos

### 5.1 Siempre hace falta un modelo de IA

No hay forma de usar `POST /generate` sin un proveedor configurado (OpenAI,
Anthropic, Gemini, Bedrock, OpenRouter, Ollama, LM Studio, cualquiera compatible con
OpenAI, o login con ChatGPT). Pasarle `slides_markdown` **saltea** la generación del
esquema —cada entrada del array se toma como una diapositiva, en orden, y
`n_slides` se fuerza a la cantidad de entradas—, pero el modelo igual hace dos
cosas: elegir el diseño de cada diapositiva
(`generate_presentation_structure`, con el prompt `STRUCTURE_FROM_SLIDES_MARKDOWN_SYSTEM_PROMPT`)
y volcar nuestro texto al esquema JSON del diseño elegido
(`generate_slide_content.py`).

Consecuencia práctica: **el texto puede quedar reformulado**. El prompt de contenido
le pide no pasarse de los límites de caracteres de cada campo y "reformular en lugar
de cortar". Por eso en `presenton/emove-payload.json` las `instructions` le piden
explícitamente usar el texto tal como está; aun así hay que revisar el resultado en
el editor web antes de entregar.

### 5.2 Sí existe una ruta sin IA, pero es trabajo manual

`POST /create/blank` → `PATCH /update` (con la lista completa de diapositivas, cada
una con su `layout_group`, `layout` y el árbol `ui`) → `POST /{id}/export`. Ninguno
de los tres llama al modelo. El costo: hay que escribir a mano el JSON de `ui` de
cada diapositiva, que es un árbol de componentes con posiciones absolutas sobre el
lienzo de 1280×720 (un solo diseño de la plantilla `dynamic` son ~6,5 KB de JSON).
Para 11 diapositivas no vale la pena; queda como alternativa si no se consigue una
clave de IA.

### 5.3 Las diapositivas son estáticas

Presenton no puede reproducir el fondo animado con la simulación del mapa: sus
diapositivas son elementos vectoriales y de texto sobre un lienzo fijo. Lo más
parecido es insertar una captura del mapa como imagen.

### 5.4 Imágenes: conviene apagarlas

Si `IMAGE_PROVIDER` no está configurado (Pexels, Pixabay, Gemini, etc.), los diseños
que piden imagen quedan a medias. Para nuestro caso lo más prolijo es levantar el
contenedor con `DISABLE_IMAGE_GENERATION=true` y, si hace falta una imagen, poner la
captura del mapa desde el editor.

## 6. Plantillas: cuál usar

Las 16 plantillas, con la cantidad de diseños y el color de fondo del tema:

| Plantilla | Diseños | Fondo | |
|---|---|---|---|
| `dynamic` | 32 | `#171717` | **oscura** |
| `editorial` | 24 | `#1D242D` | **oscura** |
| `mosaic` | 34 | `#FFFFFF` | clara |
| `executive` | 32 | `#F8F7FB` | clara |
| `civic` | 29 | `#ECECEC` | clara |
| `horizon` | 28 | `#F8FAFC` | clara |
| `momentum` | 28 | `#F6F7FC` | clara |
| `nova` | 28 | `#FFFFFF` | clara |
| `pulse` | 28 | `#FFFFFF` | clara |
| `landmark` | 27 | `#F7F5F3` | clara |
| `verdant` | 27 | `#FFFFFF` | clara |
| `signal` | 24 | `#FFFFFF` | clara |
| `general` | 12 | `#9333EA` | violeta |
| `standard` | 11 | `#1B8C2D` | verde |
| `modern` | 10 | `#F5F8FE` | clara |
| `swift` | 9 | `#BFF4FF` | clara |

**Recomendada: `dynamic`.** Es la única con una paleta oscura y cálida en los 32
diseños (fondo `#171717`, acento `#C24D12`, texto blanco, tipografía Montserrat), que
es lo más cerca que se llega del tema "ciudad de noche" de la versión web.
`editorial` es la segunda opción (azul oscuro `#1D242D`, acento `#155F99`), más fría
y con menos diseños.

### Mapeo propuesto de nuestras 11 diapositivas a diseños de `dynamic`

| # | Diapositiva | Diseño sugerido |
|---|---|---|
| 1 | Portada | `cover_title_left_image_right_8271` |
| 2 | El problema | `left_title_right_text_sections_3504` |
| 3 | La solución (4 pasos) | `title_stepped_cards_1046` |
| 4 | Modelo de negocio (3 pilares) | `center_title_cards_2592` |
| 5 | Zonas de operación (5 zonas) | `center_title_metric_cards_3569` |
| 6 | La operación (4 estados) | `title_metric_callouts_2098` |
| 7 | La demanda sigue al reloj | `left_title_right_chart_panel_1475` |
| 8 | Proceso core (SIPOC) | `left_title_right_text_sections_3504` |
| 9 | Estructura organizacional | `title_donut_chart_right_table_1700` |
| 10 | Benchmarking Grin | `image_comparison_panels_4102` |
| 11 | Cierre | `closing_title_description_1992` |

Importante: **la elección del diseño la hace el modelo**, no la API. Este mapeo
(guardado en `presenton/layouts-sugeridos.json`) sirve para dos cosas: comparar
contra lo que eligió el modelo y, si no coincide, cambiarlo desde el editor web.

## 7. Recomendación

Dos entregables distintos, con herramientas distintas:

1. **Exposición en vivo**: seguir con `emove-presentacion.html`. Es lo único que
   muestra la simulación de la operación sobre el mapa de Córdoba, que es el valor
   diferencial del trabajo.
2. **Versión para entregar** (PPTX editable o PDF): generarla con Presenton desde el
   mismo contenido, con `slides_markdown` + `instructions`, plantilla `dynamic`,
   `export_as: "pptx"`. Después revisarla en el editor web: corregir texto que el
   modelo haya reformulado y, donde haga falta, pegar una captura del mapa.

Qué hay listo en este repositorio para el paso 2:

- `presenton/emove-payload.json`: el cuerpo completo de `POST /generate`, con las 11
  diapositivas en markdown (texto extraído del HTML actual), las notas del orador
  marcadas con `> Notas:` y las instrucciones de estilo en español rioplatense.
- `presenton/generar-pptx.sh`: levanta el contenedor, espera a que responda, manda el
  payload y deja la respuesta en `respuesta.json`. El archivo exportado queda en
  `./app_data/exports/`.
- `presenton/layouts-sugeridos.json`: el mapeo de la tabla de arriba.

Variables de entorno mínimas (las acepta el `docker run` del script):
`LLM=anthropic` + `ANTHROPIC_API_KEY` + `ANTHROPIC_MODEL` (el default del repo,
`claude-3-5-sonnet-20241022`, es viejo: conviene fijar un modelo actual), o
`LLM=openai` + `OPENAI_API_KEY`, o `LLM=ollama` + `OLLAMA_URL`/`OLLAMA_MODEL` para
un modelo local. Más `PRESENTATION_GENERATION_MODE=standard` y
`DISABLE_IMAGE_GENERATION=true`.

## 8. Qué quedó sin probar

En este entorno de trabajo no se pudo ejecutar la generación: **no hay Docker
disponible** (el demonio no corre) y tampoco hay una clave de ningún proveedor de
IA. Todo lo de este documento sale de leer el código del repositorio en el commit
`44c8a61`, no de una corrida real. El script y el payload están listos para correr
en tu máquina; lo que falta verificar ahí es:

- Que el modelo elija diseños razonables (comparar contra el mapeo sugerido).
- Cuánto reformula el texto a pesar de las instrucciones.
- Cómo queda la diapositiva 9 (el dato del 40–50 %) en un diseño con gráfico de
  torta, y la 8 (SIPOC) en un diseño de secciones.
