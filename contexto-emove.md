# Contexto del proyecto: presentación E-MOVE (TPI · UTN FRC)

Resumen de todo lo trabajado hasta ahora, para retomarlo en Claude Code.

## 1. Qué es el proyecto

- **E-MOVE**: startup (ficticia, trabajo práctico integrador) de bicis y scooters eléctricos compartidos en Córdoba capital, Argentina.
- **Entregable actual**: una presentación web para exponer en vivo en la facultad (UTN FRC), con una simulación animada de la operación sobre un mapa estilizado de Córdoba como fondo.
- **Archivo**: `emove-presentacion.html` (un solo archivo, ~68 KB, HTML + CSS + JS, sin build ni backend).
- **Estado**: primera versión terminada y revisada. El usuario dijo que "como primera idea está bien" y que va a mandar **todos los conceptos que deben estar incluidos**. El contenido de las diapositivas se va a rehacer con esos conceptos, manteniendo la base técnica (mapa, simulación, controles).

## 2. Pedido original (textual)

> Creá una presentación web para exponer el TPI de E-MOVE, una startup de bicicletas y scooters eléctricos compartidos en Córdoba capital (Argentina). Es para presentar en vivo en la facultad (UTN FRC). Mientras hablo, de fondo tiene que verse una simulación animada de la operación sobre el mapa de Córdoba.
>
> **FORMATO**
> - Un solo archivo HTML autocontenido (HTML + CSS + JS), sin backend ni build. Que funcione sin internet (nada de tiles ni imágenes externas; solo Google Fonts como mucho).
> - Pantalla completa, 16:9, pensado para proyector. Tema oscuro tipo "ciudad de noche".
> - Fondo: un `<canvas>` a pantalla completa con el mapa animado. Encima, un panel lateral semitransparente (izquierda en desktop, abajo en celular) con el contenido de cada diapositiva.
>
> **MAPA DE FONDO** (canvas, estilizado, no satelital)
> - Coordenadas en km. Cuadrícula de calles con avenidas más marcadas cada pocas cuadras, el río Suquía cruzando al norte del Centro y doblando hacia el este, y el Parque Sarmiento al este de Nueva Córdoba.
> - 5 zonas de operación como polígonos semitransparentes: Centro, Nueva Córdoba, Güemes, Ciudad Universitaria (demanda alta salvo Güemes y General Paz, que son media) y General Paz (cruzando el río).
> - 5 estaciones de carga, una por zona.
> - 60 a 80 bicis como puntos que se mueven por las calles (rutas en L o Z sobre la cuadrícula) entre zonas, dejando estelas de luz.
> - Estados con color: libre (verde agua), en uso (azul), batería baja (naranja, va a la estación más cercana), cargando (gris, quieta en la estación).
> - La batería baja según los km recorridos. Bajo 25%, la bici va a cargar y vuelve a estar libre al terminar.
> - Reloj de simulación de 7:00 a 23:00 que se repite. La demanda sigue el reloj con picos de 8 a 10 h y de 17 a 20 h.
> - HUD arriba a la derecha con la hora simulada, viajes realizados, km recorridos y cantidad de bicis por estado, con la aclaración "Simulación".
> - Leyenda de colores chica abajo a la derecha.
> - Cada diapositiva mueve la cámara (zoom y paneo suaves) y activa cosas del mapa, como se indica abajo.
>
> **DIAPOSITIVAS**
> 1. Portada: "E-MOVE", "Bicis y scooters eléctricos compartidos para moverse por Córdoba", "TPI · UTN FRC". Cámara amplia con deriva lenta.
> 2. El problema: los viajes cortos (2 a 5 km) se hacen en auto o en colectivos llenos en hora pico; el último tramo desde la parada; más autos en el microcentro. En el mapa, una línea punteada animada del Centro a Ciudad Universitaria con la etiqueta "≈ 3,5 km · viaje típico de un estudiante". Bicis atenuadas.
> 3. La solución: cuatro pasos numerados (localizar en la app, desbloquear con QR, viajar, finalizar y pagar automáticamente). Cámara cerca de Nueva Córdoba.
> 4. Modelo de negocio, tres pilares: pago por uso (B2C), convenios corporativos para empleados (B2B2C) y licencia municipal (no paga, pero habilita operar a cambio de disponibilidad mínima, menor huella de carbono y control de unidades abandonadas). Cierre: "E-Move no vende vehículos: vende acceso temporal a una flota compartida".
> 5. Zonas de operación: las 5 zonas con su nivel de demanda y el motivo. En el mapa se resaltan con nombres.
> 6. La operación en vivo: explica los 4 estados y que las cifras del HUD salen de la simulación. Se muestran las estaciones.
> 7. La demanda sigue al reloj: mapa de calor sobre las zonas que crece en los picos, más un mini gráfico de demanda por hora con un marcador en la hora actual. Idea clave: rebalancear la flota antes de cada pico.
> 8. Proceso core "Gestionar el servicio de movilidad urbana" en formato SIPOC: proveedores (fabricantes, pasarela de pagos, municipio), entradas (vehículos cargados, app y GPS, solicitud del usuario), proceso (reservar, desbloquear, viajar, finalizar, cobrar), salidas (viaje, cobro, datos de uso), clientes (usuario final, empresas con convenio). Empieza con la solicitud del usuario y termina con el cobro.
> 9. Estructura organizacional: barra que muestra que Operaciones y flota suele concentrar entre el 40 y el 50% del personal en el rubro; el resto se reparte en Tecnología, Marketing, Legal y relación con el gobierno, Atención al cliente y Finanzas.
> 10. Benchmarking con Grin (operó en CABA en 2019–2020 con el mismo modelo): la recarga y el mantenimiento definen la rentabilidad; sin acuerdo municipal no hay operación; perder unidades cuesta caro. Qué hace distinto E-Move: zonas acotadas, estaciones de carga y convenio municipal desde el inicio.
> 11. Cierre: "Gracias" y "¿Preguntas?". Cámara amplia.
>
> **CONTROLES**
> - Flechas, espacio, PageUp/PageDown (para usar un presentador inalámbrico) y swipe en celular.
> - Barra inferior con anterior/siguiente, progreso clickeable y contador "03 / 11".
> - H: oculta el panel y deja solo el mapa. N: muestra notas del orador de cada diapositiva. F: pantalla completa.
>
> **ESTILO**
> - Tipografía con carácter para títulos (por ejemplo Bricolage Grotesque), una sans legible para el texto y una mono para cifras y etiquetas del mapa.
> - Entrada escalonada del texto al cambiar de diapositiva. Respetar prefers-reduced-motion.
> - Que la simulación corra fluida a 60 fps en una notebook común.
>
> Al terminar, abrilo en el navegador, recorré todas las diapositivas y corregí lo que se vea mal.

## 3. Cómo está construido `emove-presentacion.html`

### 3.1 Estructura del DOM

- `canvas#map`: fondo a pantalla completa (`alpha: false`).
- `main#panel`: panel de contenido. Izquierda en desktop (ancho `--pw: min(37rem, 46vw)`), abajo en celular (alto `--ph: 54vh`, breakpoint `max-width:760px` o `max-aspect-ratio:4/5`).
  - `.slides > section.slide` × 11. Cada una tiene `data-title`, elementos `.rv` (entrada escalonada) y un `div.speaker` oculto con las notas del orador.
  - `nav#bar`: botones `#prev` / `#next`, progreso `#prog` (un botón por diapositiva, se genera por JS), contador `#count`.
- `aside#hud` (arriba a la derecha): reloj `#clock`, `#trips`, `#km`, estados `#n0..#n3`.
- `aside#legend` (abajo a la derecha, oculta en celular).
- `aside#notes`: overlay de notas (tecla N), se llena desde `.speaker` de la diapositiva activa.

### 3.2 Estilo

- Paleta (variables en `:root`): fondo `#091322`, texto `#e9eef7`, libre `#35e0c2`, en uso `#4f8cff`, batería baja `#ff8f3a`, cargando `#b3bccb`, mapa de calor `#ff5ca8`, zonas `#d4e0ff`.
- Tipografías (Google Fonts, con fallback del sistema si no hay internet): **Bricolage Grotesque** (títulos), **Instrument Sans** (texto), **IBM Plex Mono** (cifras, HUD, etiquetas del mapa).
- Tamaño base: `html{font-size:clamp(12px,min(1.12vw,2vh),26px)}` → ~21.5 px a 1920×1080, ~14.3 px a 1280×720. Todo en `rem`.
- Entrada escalonada: `.slide.active .rv{animation:rise …; animation-delay:calc(var(--i)*80ms + 60ms)}`; `--i` se asigna por JS. Con `prefers-reduced-motion` se desactivan animaciones y la cámara salta sin transición.

### 3.3 Geografía (en km; x = este, y = norte; origen ≈ Plaza San Martín)

- Cuadra `G = 0.13` km; avenida cada `AV = 6` cuadras. Límites `B = {x0:-12, x1:11, y0:-11.5, y1:9}`.
- `ZONES` (polígonos, `level`, punto de etiqueta `lab`): Centro (alta), Nueva Córdoba (alta), Güemes (media), Ciudad Universitaria (alta), General Paz (media, al otro lado del río).
- `STATIONS`: una por zona, en `lab + (0.39, -0.39)` ajustado a la cuadrícula (para no tapar el nombre de la zona).
- `RIVER` (polilínea del Suquía, al norte del Centro, dobla al sureste y sigue al este), `PARK` (Parque Sarmiento) + `LAKE`.
- `LIGHTS`: ~3500 puntos de "luces de edificios" (semilla fija), más densos cerca del centro.
- `FADE`: máscara radial pre-renderizada (canvas 256×256) que oscurece la ciudad hacia los bordes.

### 3.4 Simulación

- Constantes: `FLEET = 72`, `DAY = 960` min simulados (7:00–23:00), `SIM_PER_SEC = 2.0` (un día ≈ 8 min reales), `RATE = 2.0` viajes/min con demanda 1, `DRAIN = 100/24` %/km (autonomía ≈ 24 km), `LOW = 25`, `CHARGE = 1.1` %/min, estelas `TRAIL_N = 16`.
- Estados: `S_FREE=0`, `S_USE=1`, `S_LOW=2`, `S_CHG=3`.
- `demand(h)`: base 0.16 + gaussianas en 9 h (σ 1.0), 18.4 h (σ 1.3) y una loma a las 13.3 h; cae después de las 20.6 h.
- Orígenes/destinos ponderados por hora (`W_MORNING` / `W_EVENING`, mezcla suave entre 11.5 y 14.5 h): a la mañana los viajes van a Ciudad Universitaria y Centro; a la tarde vuelven a Nueva Córdoba y Güemes. 28 % de los viajes son dentro de la misma zona.
- `route()`: rutas en L o Z sobre la cuadrícula; en las Z, 55 % de las veces el tramo intermedio va por una avenida.
- Al terminar un viaje con batería < 25 %, el vehículo pasa a "batería baja" y va a la estación más cercana (distancia Manhattan); ahí carga en un anillo de 16 lugares y al llegar a 100 % queda libre en una esquina cercana.
- Contadores `sim.trips` y `sim.km` (solo km en uso) se reinician al volver a las 7:00.
- Mapa de calor: cada inicio/fin de viaje suma a `zone.heat`, que decae con τ = 24 min; intensidad `1 - exp(-heat/16)`.
- Arranque: se pre-simula de 7:00 a 7:45 para que haya movimiento desde el inicio.

### 3.5 Diapositivas → cámara y capas (array `SL`)

Cada entrada: `cam: [cx, cy, span]` (span = km que entran en el área visible), `zoneA` (opacidad de zonas), `labels` (nombres de zonas), `stn` (estaciones resaltadas con nombre), `bike` (opacidad de vehículos), `heat`, `route` (línea del viaje típico), `ops` (resalta naranja y gris), `zlev` (muestra "demanda alta/media"), `drift` (deriva lenta).

| # | Diapositiva | Cámara | Capas |
|---|---|---|---|
| 1 | Portada | amplia, deriva | — |
| 2 | El problema | media | ruta 3,5 km, vehículos atenuados |
| 3 | La solución | cerca de Nueva Córdoba | nombres de zonas |
| 4 | Modelo de negocio | media | — |
| 5 | Zonas de operación | todas las zonas | zonas resaltadas + nivel de demanda |
| 6 | Operación en vivo | media | estaciones con nombre |
| 7 | Demanda y reloj | todas las zonas | mapa de calor + gráfico SVG con marcador de hora |
| 8 | Proceso core (SIPOC) | amplia | — |
| 9 | Estructura organizacional | media | `ops`: resalta batería baja y cargando |
| 10 | Benchmarking Grin | amplia | zonas y estaciones |
| 11 | Cierre | amplia, deriva | — |

- Ruta del viaje típico: `TRIP = [[0,0],[0,-2],[0.65,-2],[0.65,-2.85]]` (3,5 km por la cuadrícula).
- Área visible del mapa (`viewport()`): en desktop, a la derecha del panel y sin la columna del HUD; en celular, arriba del panel. El zoom se calcula siempre con el panel visible (`viewport(true)`), así ocultar el panel con H muestra más mapa sin hacer zoom.

### 3.6 Rendimiento

- La capa base (fondo, calles, río, parque, luces, máscara y viñeta) se dibuja en un canvas aparte (`baseCv`) con 80 px de margen y solo se regenera cuando cambia el zoom o el desplazamiento supera el margen. Con la cámara quieta o en deriva, cada cuadro es un `drawImage` + zonas + vehículos + etiquetas.
- La cámara se acerca exponencialmente al objetivo y "salta" al objetivo cuando el error es < 0,6 px, para que la capa base deje de regenerarse.
- Si con pantalla de alta densidad más del 40 % de los cuadros tarda > 24 ms, baja `DPR` a 1.
- Vehículos y estelas se dibujan agrupados por estado (pocos `stroke`/`fill` por cuadro), sin `shadowBlur`.
- Medido en Chromium sin GPU (render por software, el peor caso): ~60 fps con la cámara quieta; ~40–50 fps solo durante las transiciones de cámara.

### 3.7 Controles y extras

- Siguiente: → ↓ PageDown Espacio Enter. Anterior: ← ↑ PageUp Backspace. Home/End. H panel, N notas, F pantalla completa, Esc cierra notas.
- Swipe horizontal (> 50 px, < 800 ms) en táctil.
- La URL guarda la diapositiva (`#7`) y responde a `hashchange`.
- Hook para pruebas: `window.__emove = { sim, bikes, go, cur }`.

## 4. Verificación hecha

Con Playwright + Chromium headless (sin GPU) en el entorno de trabajo:
- Capturas de las 11 diapositivas en 1920×1080, 1280×720 y 390×844 (celular), con las tipografías reales servidas localmente desde paquetes `@fontsource`.
- Control de desborde del contenido de cada diapositiva (sin desbordes en 16:9; en celular el panel scrollea, es esperado).
- Teclado, clic en la barra de progreso, botones, hash, swipe, H, N y `prefers-reduced-motion`: funcionan, sin errores de JS.
- Sin internet: solo falla la carga de Google Fonts (se usan las del sistema); la página funciona.

Correcciones aplicadas tras revisar las capturas: General Paz quedaba debajo del HUD; nombres de zona tapaban las estaciones; la línea de los pasos de la diapositiva 3 seguía de largo; la llave "40–50 %" pisaba texto; las notas pisaban la leyenda; zoom excesivo al ocultar el panel; etiqueta del recorrido salía de la pantalla en celular; HUD demasiado grande en celular; borde rectangular visible de la ciudad; pocos vehículos cargando (se bajó la autonomía); la cifra "2–5 km" se veía mal en mono (pasó a la tipografía de títulos).

## 5. Datos a respaldar

Están en la presentación tal como los indicó el usuario, sin verificación propia:
- Operaciones y flota concentra 40–50 % del personal en el rubro de micromovilidad compartida.
- Grin operó en CABA en 2019–2020 con el mismo modelo.
Conviene tener la fuente a mano por si preguntan en la exposición.

## 6. Próximo paso: conceptos del usuario

El usuario va a enviar todos los conceptos que deben estar incluidos. Se le preguntó (sin respuesta todavía):
- Si los conceptos van en un orden fijo o se pueden agrupar.
- Si hay un máximo de diapositivas o un tiempo de exposición asignado.
- Si alguna de las 11 diapositivas actuales sale o cambia de lugar.

Al recibirlos: rearmar las `section.slide`, sus notas `.speaker` y las entradas de `SL` (cámara y capas por diapositiva), y volver a revisar con capturas en 1920×1080, 1280×720 y celular.

## 7. Análisis del repositorio Presenton

Repositorio: https://github.com/presenton/presenton (commit analizado `44c8a61`, 12/10/2026; licencia Apache 2.0).

> Versión ampliada y verificada de este análisis: **`analisis-presenton.md`** (incluye la ruta sin IA, el catálogo de las 16 plantillas con sus colores de fondo y el mapeo de las 11 diapositivas a diseños de la plantilla `dynamic`).

**Qué es**: generador de presentaciones con IA, open source. A partir de un prompt, un documento o un PPTX propio, un modelo de lenguaje arma las diapositivas sobre una plantilla y exporta **PPTX editable o PDF**. Se usa como app de escritorio (Electron: Windows, macOS, Linux) o con Docker:

```bash
docker run -it --name presenton -p 5001:80 -v "./app_data:/app_data" ghcr.io/presenton/presenton:latest
# luego abrir http://localhost:5001
```

**Estructura**:
- `servers/fastapi`: backend Python (FastAPI). Endpoints bajo `/api/v1/ppt/...`; también hay `/api/v2` y un servidor MCP (`mcp_server.py`).
- `servers/nextjs`: interfaz web (Next.js + Tailwind).
- `electron/`: app de escritorio (requiere Node LTS, Python 3.11 y `uv` para desarrollo).
- `templates/<nombre>/template.json` + `static/`: 16 plantillas (civic, dynamic, editorial, executive, general, horizon, landmark, modern, momentum, mosaic, …). Formato JSON con `merged_components`, `layouts`, `fonts`, `theme`; elementos vectoriales y de texto sobre un lienzo fijo de **1280×720**. Ver `docs/template-v2.md`.

**API de generación**: `POST /api/v1/ppt/presentation/generate` (y `/generate/async`). Modelo `GeneratePresentationRequest` (`servers/fastapi/models/generate_presentation_request.py`):
- `content` (obligatorio), `slides_markdown: List[str]` (una entrada por diapositiva), `instructions`, `tone`, `verbosity`, `n_slides`, `language`, `template` (default `general`), `include_title_slide`, `include_table_of_contents`, `files`, `export_as` (`pptx` | `pdf`), `web_search`.

**Hallazgos clave**:
- **Siempre requiere un modelo de IA** (OpenAI, Anthropic, Gemini, Ollama, LM Studio, compatibles con OpenAI, o login con ChatGPT). Aun con `slides_markdown`, el modelo genera la estructura (elige diseño) y el contenido de cada diapositiva (`generate_presentation_structure`, `get_slide_content_from_type_and_outline`).
- En el entorno de trabajo usado hasta ahora **no hay salida a los proveedores de IA** (la conexión a la API de OpenAI no respondió), así que no se pudo correr la generación ahí. En la máquina del usuario, con Docker o la app de escritorio y una clave o modelo local, sí.
- Sus diapositivas son **estáticas**: no puede reproducir el fondo animado con la simulación. A lo sumo, una captura del mapa como imagen.

**Recomendación propuesta al usuario** (pendiente de confirmación):
- Mantener el HTML con la simulación para la exposición en vivo.
- Usar Presenton para una versión PPTX/PDF editable para entregar, cargando el mismo contenido mediante `slides_markdown` + `instructions` (estilo: tema oscuro, tono académico, español rioplatense) y `export_as: "pptx"`.

Preguntas abiertas para el usuario:
- ¿Presenton es para el PowerPoint de entrega o pensaba usarlo para la exposición?
- ¿Lo tiene instalado? ¿App de escritorio o Docker? ¿Qué modelo de IA tiene configurado?

## 8. Preferencias del usuario observadas

- Escribe en español rioplatense (voseo); todo el contenido y las notas van en ese registro.
- Presenta en vivo con proyector 16:9 y posiblemente presentador inalámbrico.
- Quiere que se pruebe en el navegador y se corrija lo que se vea mal antes de entregar.
