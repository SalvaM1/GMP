# Prompt para Claude Code — Presentación TPI E-MOVE (v2)

> Copiá todo este archivo como primer mensaje en el proyecto de Claude Code.
> Antes, poné en la carpeta del proyecto:
> - `CONTEXTO_E-MOVE.md` (base de conocimiento; **única fuente de contenido**)
> - `CASO_TPI_E-MOVE.pdf` (enunciado de la cátedra, mismo contenido que la Parte A del contexto)
> - `referencias/mapa-referencia.png` (captura estilo Google Maps de Córdoba)
> - `referencias/bpmn.jpg` (diagrama BPMN del Miro)
> - `emove-presentacion.html` y `contexto-emove.md` (versión 1, base técnica a reutilizar)
>
> Duración de la exposición: **20 minutos**. Integrantes: ver sección 5, diapositiva de portada.

---

## 0. Tu tarea

Construí una presentación web para exponer en vivo el Trabajo Práctico Integrador de **Gestión de la Mejora de Procesos (UTN FRC, Ingeniería en Sistemas de Información, 2026)** sobre la organización **E-MOVE**, y el proceso elegido para mejorar: **"Gestionar el servicio de movilidad urbana"**.

Partí de la versión 1 (`emove-presentacion.html`, documentada en `contexto-emove.md`), pero esta versión cambia mucho: **tema claro**, **mapa estilo Google Maps de Córdoba**, **contenido nuevo y riguroso tomado solo del contexto**, más diapositivas de análisis, animaciones más elaboradas y letra más grande.

Trabajá en este orden:
1. Leé `CONTEXTO_E-MOVE.md` completo (son ~765 líneas; leelo por partes hasta el final). Mirá las dos imágenes de `referencias/`.
2. Leé `emove-presentacion.html` para reutilizar el motor (navegación, cámara, notas, capa base cacheada, pruebas).
3. Construí la presentación nueva según este documento.
4. Verificala en un navegador real (sección 9) y corregí todo lo que se vea mal antes de darla por terminada.

---

## 1. Reglas de contenido (lo más importante)

1. **No inventes nada.** Todo dato, número, nombre, cita, proceso, factor FODA, estrategia, función o stakeholder sale de `CONTEXTO_E-MOVE.md`. Si algo no está ahí, no va. Si dudás, dejalo afuera y anotalo en `PENDIENTES.md`.
2. **Copiá los números exactamente** como figuran (formato es-AR: `1.200`, `9.500`, `38.000`, `3,8`, `4,5`, `22 %`). No calcules porcentajes nuevos ni promedios para mostrar en pantalla.
3. **Las propuestas no están implementadas.** Todo lo de SIOFS y las estrategias CAME se presenta como propuesta / escenario objetivo, nunca como algo que E-MOVE ya hace.
4. **El mapa y la animación son ilustrativos.** No muestres contadores simulados que parezcan datos reales (la v1 tenía un HUD con viajes y km simulados: **eliminarlo**). Las únicas cifras que pueden aparecer sobre el mapa son cifras del caso.
5. **Quitá de la v1 todo lo que no está en el contexto:** 5 estaciones de carga una por zona, niveles de demanda "alta/media" por zona, picos 8–10 h y 17–20 h, 72 vehículos, umbral de batería del 25 %, benchmarking con Grin, "40–50 % del personal en operaciones", SIPOC de la v1, modelo de negocio con "licencia municipal que no paga".
6. Recomendaciones del profesor (obligatorias):
   - **Pocas palabras** en pantalla. La explicación va en las notas del orador.
   - **Lucirse en el análisis** (proceso actual, BPMN, números, stakeholders, FODA, CAME) para llegar con fundamento a la acción de mejora. La mejora ocupa menos que el análisis.
   - Formular la mejora como **qué se quiere lograr** ("Queremos bajar los viajes no concretados del 22 % a menos del 2 %"), **no cómo** ("Implementamos un sistema que…"). En pantalla: resultados; el "cómo" solo como etiqueta mínima o en notas.
   - **No pasarse del tiempo**: la exposición dura **20 minutos**. Cada diapositiva tiene un tiempo planificado y la suma no lo supera.
   - **Letra grande** (ver 4.3).

### 1.1 Inconsistencias conocidas del contexto (cómo resolverlas)

| Tema | Resolución |
|---|---|
| El caso no nombra la ciudad; el equipo la ubica en Córdoba (Ordenanza N° 13.549 de Córdoba en B.7) | Usar Córdoba en el mapa. No decir "el caso dice Córdoba". |
| Numeración FODA (B.9: F1–F5, O1–O4, D1–D5, A1–A5) ≠ numeración de la matriz CAME (B.10.1: F1–F7, O1–O6, D1–D5, A1–A7) | Diapositivas FODA: usar B.9. Diapositiva CAME: **no mostrar IDs de factores**, mostrar los factores cruzados con palabras cortas (ej. "Telemetría IoT + IA predictiva"). |
| FO-2 tiene el verbo faltante en el Miro | Mostrar: "Medir con la telemetría el CO₂ que evitan los viajes y ofrecerlo al municipio como indicador oficial y verificable". |
| Huella: caso dice "t CO2e por viaje"; Miro "t CO2 por viaje" | Usar "t CO2e por viaje" (caso). |
| El BPMN no indica si es AS-IS o TO-BE | El equipo lo presenta como **proceso actual**. |
| PROC-07 se llama distinto en mapa y tabla | Usar "Gestionar la administración" (mapa de procesos). |
| Reglas RN-01, RN-03 y RN-06 figuran en el Miro como "hoy inexistentes" que la mejora formaliza | Presentarlas como parte de la propuesta, no del estado actual. |
| Propuestas complementarias DO y FA "en las filas siguientes" no están en el material | No desarrollarlas; solo mencionarlas como complementarias en notas. |

---

## 2. Formato técnico

- **Un solo archivo**: `presentacion-emove.html` (HTML + CSS + JS), sin build ni backend. Funciona sin internet; solo puede cargar Google Fonts (con fallback del sistema). Nada de tiles ni imágenes externas: el mapa se dibuja con código.
- Las imágenes de `referencias/` son **solo referencia visual**; no se incrustan. El BPMN se **redibuja en SVG** a partir de la transcripción de B.12.
- 16:9, pantalla completa, pensado para proyector (diseñar a 1920×1080; verificar también 1280×720). Responsive a celular (panel abajo, contenido con scroll).
- 60 fps en una notebook común. Reutilizá las técnicas de la v1: capa base del mapa cacheada en un canvas aparte mientras la cámara está quieta o en deriva lenta, dibujos agrupados por color, sin `shadowBlur` ni `backdrop-filter`, bajada adaptativa de `devicePixelRatio`. **Pausar la simulación del mapa cuando la diapositiva no lo muestra.**
- Contenido definido en datos: un array `SLIDES` en JS (o `<section>` con `data-*`) con `id`, `parte`, `layout`, `titulo`, `escena` (qué hace el mapa), `fragmentos`, `notas`, `minutos`. Así es fácil reordenar o quitar diapositivas.
- Config editable al principio del archivo: `INTEGRANTES` (array con legajo y nombre), `DURACION_MIN = 20`, textos de portada.

### 2.1 Controles

- Siguiente: → ↓ Espacio PageDown Enter. Anterior: ← ↑ PageUp Backspace. Home / End. Swipe en táctil.
- **Fragmentos**: dentro de una diapositiva, "siguiente" revela el próximo paso (como reveal.js) antes de pasar a la siguiente diapositiva; "anterior" los retrocede.
- Barra inferior: anterior / siguiente, progreso clickeable dividido visualmente en **Parte 1** y **Parte 2**, contador `07 / 22`.
- **H** oculta el panel (solo mapa). **N** notas del orador superpuestas con **cronómetro** (transcurrido, tiempo planificado de la diapositiva, desvío total). **P** abre la **vista del orador** en otra ventana (diapositiva actual + próxima + notas + cronómetro), sincronizada por `postMessage` con la referencia de `window.open` (debe funcionar con `file://`). **O** vista general en grilla. **F** pantalla completa. **R** reinicia el cronómetro. **Esc** cierra overlays.
- La URL guarda diapositiva y fragmento (`#9.2`) y responde a `hashchange`.
- `prefers-reduced-motion`: sin animaciones de entrada, cámara sin transición, simulación en pausa con un fotograma representativo.

---

## 3. Mapa estilo Google Maps de Córdoba

### 3.1 Estilo visual (fondo claro, como la imagen de referencia)

| Capa | Color sugerido |
|---|---|
| Fondo / manzanas | `#f2f1ee` |
| Áreas comerciales densas (Centro, Nueva Córdoba, General Paz) | beige suave `#f8eed8` |
| Calles | blanco `#ffffff` con borde `#dcdcdc` |
| Avenidas y bulevares | más anchas, blanco con borde `#cfcfcf`; las principales en amarillo suave `#fde9a6` |
| Parques | verde `#cde8cf`, borde `#b6dcb9` |
| Río Suquía | celeste `#a9d3f2` |
| Universidad | gris claro `#e7e7ea` |
| Hospitales | rosado `#f8dede` |
| Etiquetas de barrio | gris `#7a7f87`, mayúsculas espaciadas (como Google Maps) |
| Nombres de calles | gris `#8a8f96`, siguiendo el ángulo de la calle |

Iconos tipo pin de Google (círculo con glifo) para hitos. Todo dibujado con SVG o canvas, sin imágenes.

### 3.2 Geografía (aproximada; ajustala a `referencias/mapa-referencia.png`)

Sistema local en km, origen en **Plaza San Martín**, x = este, y = norte. Escala de la captura: ~120 px ≈ 1 km.

| Elemento | Ubicación aproximada |
|---|---|
| Plaza San Martín | (0, 0), Centro |
| Centro | x −0,9 a 0,9 · y −0,7 a 0,7 |
| Av. Colón | eje este-oeste ~0,4 km al norte de la plaza |
| Blvd. San Juan | eje este-oeste ~0,6 km al sur de la plaza, algo diagonal; separa Centro de Nueva Córdoba |
| Av. Maipú | norte-sur ~0,6 km al este de la plaza |
| Río Suquía | llega desde el norte al este del Centro (junto a Blvd. Guzmán, x ≈ 1,2), dobla hacia el este y sigue entre el Centro y General Paz |
| General Paz | al noreste, cruzando el río: x 1,3 a 2,6 · y −0,2 a 0,8 (Av. 24 de Septiembre, Rosario de Santa Fe) |
| Nueva Córdoba | al sur del Centro: x −0,6 a 0,9 · y −0,8 a −2,0 (Paseo del Buen Pastor ≈ (−0,45, −1,0); Museo Evita ≈ (−0,1, −1,4)) |
| Güemes | al oeste de Nueva Córdoba: x −1,8 a −0,6 · y −0,6 a −1,8 |
| Parque Sarmiento | al este/sureste de Nueva Córdoba: x 0,6 a 1,9 · y −1,0 a −2,6, con avenida Deodoro Roca y un lago |
| Ciudad Universitaria (UNC) | al sur: x −0,6 a 1,0 · y −2,2 a −3,8 (UNC ≈ (−0,2, −2,6)) |
| Referencias de borde (solo como contexto, sin operación) | Paso de los Andes (oeste), Crisol Norte (este del parque), Jardín (sur), Av. Revolución de Mayo, Av. Pablo Richieri |

- La cuadrícula del Centro y Nueva Córdoba está levemente rotada (~10°); General Paz tiene otra orientación; Ciudad Universitaria es un campus irregular con edificios grises y verde.
- Nombres de calles: solo los que aparecen en la captura (Av. Colón, Blvd. San Juan, Av. Maipú, Blvd. Guzmán, Av. 24 de Septiembre, Deodoro Roca, Av. Revolución de Mayo, Av. Pablo Richieri). Hitos: Plaza San Martín, Paseo del Buen Pastor, Parque Sarmiento, Universidad Nacional de Córdoba.

### 3.3 Zonas de operación de E-MOVE (polígonos semitransparentes encima del mapa)

| Zona | Tipo en la presentación | Fundamento del contexto |
|---|---|---|
| Ciudad Universitaria | **Zona crítica** (universidades) | A.5.3: el municipio exige 85 % en zonas críticas: universidades, áreas bancarias y de oficinas. A.7.2: "zona universitaria sin unidades a las 10:00". |
| Centro | **Zona crítica** (áreas bancarias y de oficinas) | A.5.3 |
| Nueva Córdoba | **Zona crítica** (universidades y oficinas) | A.5.3. Decisión del equipo: concentra facultades de la UNC y oficinas, y es contigua a Ciudad Universitaria. |
| Güemes | Barrio residencial | A.5.4: en barrios residenciales se acumulan unidades ociosas |
| General Paz | Barrio residencial (cruzando el río) | A.5.4 |
| Parque Sarmiento | Zona de operación (paseo) | Pedido del equipo |

- Zonas críticas (Centro, Nueva Córdoba, Ciudad Universitaria): borde sólido color "crítico", etiqueta "Zona crítica". Barrios residenciales (Güemes, General Paz) y Parque Sarmiento: borde punteado. En la escena `hoy`, las tres zonas críticas se vacían y las residenciales acumulan unidades ociosas.
- **3 depósitos operativos** (A.1): el caso no da su ubicación. Dibujalos con ícono de depósito y la leyenda "ubicación ilustrativa".
- No dibujes estaciones de carga fijas en el estado actual: los "centros de recarga y redistribución" son una estrategia propuesta (DO-2), no existen hoy.

### 3.4 Vehículos y estados (animación ilustrativa)

- Muestra de ~120–160 puntos que se mueven por las calles (rutas en L o Z sobre la cuadrícula, como la v1), con estelas suaves. Proporción scooters / bicis según la flota del caso (1.200 / 350); scooters como punto, bicis como punto con anillo. Leyenda: "Muestra ilustrativa de la flota".
- Estados y colores (paleta en 4.1):
  - **Disponible** (verde E-MOVE)
  - **En viaje** (azul)
  - **Batería baja / no apta** (ámbar). Umbral: **20 %** (RN-01), no 25 %.
  - **En depósito** (gris)
  - **Camioneta de logística** (ícono de utilitario gris oscuro; en el escenario actual con humo de escape por ser a combustión).
- Reloj ilustrativo en la esquina con la etiqueta "Escena ilustrativa". No inventar horarios pico: el único horario concreto del contexto es "10:00, zona universitaria sin unidades" y "reportes cada 4 horas".

### 3.5 Escenas del mapa (cada diapositiva activa una)

| Escena | Qué se ve |
|---|---|
| `ambiente` | Vista amplia, deriva lenta, vehículos circulando, zonas tenues. |
| `zonas` | Las zonas aparecen una a una con su nombre y tipo. |
| `viaje` | Zoom a Nueva Córdoba y Ciudad Universitaria. Un viaje resaltado, sincronizado con los fragmentos: pin "localizar" → pulso de QR "desbloquear" → recorrido con telemetría → estaciona dentro de la zona permitida (geocerca) → tilde de cobro. |
| `ciclo` | Una unidad hace el ciclo completo del proceso: viaje → batería baja → camioneta la retira → depósito (recarga) → redistribución → disponible otra vez. |
| `hoy` (AS-IS) | **La escena fuerte.** Hora pico: las zonas críticas se vacían (medidor bajando hasta "< 60 %" frente a una línea objetivo de 85 %); en barrios residenciales se acumulan unidades ociosas; un reloj marca "Reporte de ocupación: cada 4 h" y el reporte llega cuando "la necesidad ya pasó"; camionetas a combustión dan vueltas con trazas punteadas de "km en vacío"; algunos intentos de viaje terminan con una ✕ roja ("viaje no concretado"), con una proporción ilustrativa del 22 %; unidades que "figuran disponibles" pero se vuelven ámbar al acercarse el usuario. Etiquetas mínimas con cifras del caso. |
| `objetivo` (TO-BE propuesto) | Rótulo visible "Escenario objetivo — propuesta, no implementada". Mancha violeta de demanda anticipada sobre las zonas críticas **antes** del pico; unidades no aptas pasan a gris "no disponible" automáticamente; camionetas con rutas planificadas (líneas sólidas, recorridos más cortos, sin vueltas en vacío); cierre de viaje con validación de geocerca; medidor de zona crítica subiendo hasta la línea del 85 %. **No** cambiar las camionetas a eléctricas: eso es DO-1, complementaria y fuera de SIOFS. |
| `fondo` | Mapa quieto, atenuado (overlay blanco ~85 %), simulación en pausa. Se usa en diapositivas de diagramas. |

La cámara (zoom y paneo suaves) y las capas se configuran por diapositiva, como en la v1.

---

## 4. Diseño

### 4.1 Paleta (fondo claro, colores vivos y armónicos)

| Rol | Color |
|---|---|
| Tinta / títulos | `#16202c` |
| Texto secundario | `#5a6472` |
| Superficie de paneles | `#ffffff`, sombra `0 24px 60px rgba(22,32,44,.12)`, radio 24 px |
| Verde E-MOVE (marca, disponible, metas) | `#10b981` |
| Azul viaje | `#3b6cf6` |
| Ámbar alerta | `#f59e0b` |
| Rojo falla / brecha | `#e5484d` |
| Violeta predicción / propuesta | `#7c5cff` |
| Gris depósito | `#8b95a1` |

- Colores por cuadrante FODA: Fortalezas verde, Oportunidades azul, Debilidades ámbar, Amenazas rojo. CAME: mismos colores en los cruces.
- "Hoy" siempre en rojo/ámbar; "Meta" siempre en verde. Consistente en todas las diapositivas.
- Evitá el look de plantilla genérica: nada de tarjetas idénticas con la misma sombra en todas partes; la jerarquía la dan el tamaño y el color.

### 4.2 Tipografía

- Títulos y números grandes: **Bricolage Grotesque** (700–800).
- Texto: **Instrument Sans**.
- Etiquetas de mapa, IDs y cifras chicas: **IBM Plex Mono**.

### 4.3 Tamaños (a 1920×1080; usar `rem` escalado al viewport como la v1)

- Títulos: ≥ 72 px. Números protagonistas: ≥ 140 px. Texto: ≥ 32 px. **Ningún texto visible por debajo de 22 px** (incluye etiquetas del mapa y del BPMN en su zoom de lectura).
- **Máximo ~25 palabras visibles por diapositiva** sin contar etiquetas de diagramas. Títulos de 3 a 8 palabras, como afirmación ("La flota está en el lugar equivocado").

### 4.4 Layouts

- `mapa`: panel blanco a la izquierda (~38 % del ancho) + mapa vivo a la derecha. Celular: panel abajo.
- `escenario`: contenido a ancho completo sobre el mapa en escena `fondo`. Para BPMN, FODA, CAME, objetivos, stakeholders, alineación.
- `portada` / `cierre`: tipografía grande sobre el mapa en `ambiente`.
- Separadores de parte integrados en la primera diapositiva de cada parte (etiqueta "Parte 1 · La organización", "Parte 2 · El proceso").

### 4.5 Animaciones

- Entrada escalonada del texto, contadores numéricos que suben hasta la cifra, barras "Hoy → Meta" que se dibujan, líneas que conectan factores (FODA → CAME → mejora → objetivo), token que recorre el BPMN, tarjetas que giran de "Hoy" a "Con la mejora".
- Una animación protagonista por diapositiva; el resto, sobrio.

---

## 5. Estructura y contenido de las diapositivas

Texto en pantalla = **propuesta corta**; podés ajustar la redacción para que entre, sin cambiar datos. Las notas del orador desarrollan la explicación **usando solo el contexto** (citar entrevistas de A.7 cuando sirvan).

### Portada
- **Layout** `portada` · **escena** `ambiente`.
- "E-MOVE" (wordmark) · "Gestionar el servicio de movilidad urbana" · "Análisis y propuesta de mejora" · "Gestión de la Mejora de Procesos · TPI 2026 · UTN FRC".
- **Integrantes del grupo**, con legajo y apellido y nombre, en una grilla de dos columnas al pie de la portada (tipografía mono para el legajo, en un tamaño menor que el resto pero nunca por debajo de 22 px). Son ocho, así que la grilla no debe apretar el título: si no entran cómodos, usá tres columnas.

| Legajo | Integrante |
|---|---|
| 400638 | Matos, Salvador |
| 400633 | Isleño, Leonardo |
| 400256 | Salas, Bruno |
| 400692 | Pratto, Bautista |
| 406993 | Young, Máximo |
| 400254 | Torres Baldo, Luis Agustín |
| 400988 | Martínez, Manuel |
| 401723 | Olive Juárez, Juan Elías |

- Los nombres se escriben exactamente así. Es la única diapositiva donde no rige el límite de ~25 palabras: la lista de integrantes no cuenta.
- Animación de entrada: primero el wordmark y el título, después la lista de integrantes en bloque (sin animar nombre por nombre).

### PARTE 1 — La organización (4 diapositivas, máximo)

**1. ¿Qué es E-MOVE?** · `mapa` · escena `zonas`
- Título: "Micromovilidad eléctrica compartida".
- Contadores: **1.200** scooters · **350** bicis eléctricas · **+38.000** usuarios registrados · **~9.500** viajes por día · **+60 %** usuarios activos en el último año.
- Línea chica: "Startup · 3 años · 48 colaboradores · 3 depósitos".
- Fuente: A.1, A.8.

**2. ¿Cómo funciona?** · `mapa` · escena `viaje` (sincronizada con fragmentos)
- 5 pasos con íconos: Localizar → Desbloquear (QR) → Viajar (telemetría IoT) → Estacionar en zona permitida → Pagar.
- Clientes: Usuarios individuales · Empresas con convenio · Municipio.
- Fuente: A.1, A.6, B.1, B.1.3.

**3. Propósito y equipo** · `escenario`
- Misión (versión corta + completa en notas): "Movilidad compartida, accesible y ambientalmente responsable".
- Visión: "**2028**: la plataforma local de micromovilidad sustentable más confiable y escalable".
- Valores (chips): Sustentabilidad con evidencia · Orientación al usuario · Seguridad operativa · Innovación aplicada · Mejora continua.
- Barra de 48 personas por área: Operaciones, logística y mantenimiento **22** · Tecnología e IT **7** · Administración y Finanzas **6** · Comercial y Alianzas **5** · Dirección General **3** · Compras **3** · RR. HH. **2**. Resaltar Operaciones.
- Fuente: A.2, B.1, B.1.1.

**4. Mapa de procesos** · `escenario`
- Tres bandas: Estratégicos (4) · Esenciales: Gestionar la comercialización → **Gestionar el servicio de movilidad urbana** · Soporte (5). Nombres de B.3.
- Animación: aparecen las bandas; se atenúa todo menos el proceso elegido, que crece y pasa a ser el encabezado de la Parte 2.
- Fuente: B.3, A.6 (la comercialización entrega el usuario habilitado al proceso de servicio).

### PARTE 2 — El proceso y su mejora

**5. El proceso elegido** · `mapa` · escena `ciclo`
- Título: "Gestionar el servicio de movilidad urbana".
- Diagrama circular del ciclo: Solicitud → Localizar y desbloquear → Viaje monitoreado → Cierre y cobro → Recuperación (retiro, depósito, recarga, mantenimiento) → Redistribución → Disponible otra vez.
- "Desde: el usuario solicita un vehículo" · "Hasta: la unidad vuelve a una zona habilitada".
- Fuente: B.5, A.6.

**6. BPMN: cómo funciona hoy** · `escenario`
- Redibujo SVG del BPMN completo de B.12: pool, 4 carriles (Cliente · Responsable de alquiler automatizado · Colaborador · Supervisor de logística), 35 tareas, 9 compuertas XOR, 4 eventos, almacenes de datos. Tipo de tarea con ícono (servicio, usuario, manual). Estilo BPMN claro y prolijo.
- El diagrama es ancho: usá una **cámara sobre el BPMN** que recorre las fases con fragmentos, y un token animado que avanza por el flujo:
  1. Validaciones antes del viaje (T01–T09): batería, daños visibles, medio de pago.
  2. Viaje y cierre (T10–T13): monitoreo, estacionamiento.
  3. Cobro (T14–T20): reclamos, convenio corporativo, cupo mensual.
  4. Recarga y reparación (T21–T28).
  5. Redistribución (T29–T35): reporte de ocupación → supervisor → colaborador → disponible.
- Una frase por fase. Vista general al final con el diagrama entero.
- Fuente: B.12.

**7. Dónde se rompe hoy** · `escenario`
- El mismo BPMN atenuado con **marcadores rojos numerados** sobre las tareas, cada uno con un rótulo corto y su evidencia:

| # | Tarea(s) | Rótulo | Evidencia (contexto) |
|---|---|---|---|
| 1 | T01–T02 / G01 | "Figura disponible, pero no anda" | A.7.4 (vuelve a la calle porque la app dice "Disponible"), A.7.5 → **22 %** viajes no concretados |
| 2 | T15 | "Soporte sin telemetría" | A.5.4, A.7.5 → reclamos **+35 %** |
| 3 | T23–T24, T27–T28 | "Cuaderno → Excel" | A.7.4 (todo mezclado; registro en cuaderno que se vuelca a Excel) |
| 4 | T29 | "Reporte cada 4 horas" | A.5.2, A.7.2 ("a las 10:00 la necesidad ya pasó") |
| 5 | T30–T31 | "Rutas a ojo, por teléfono" | A.7.2, A.7.3 (radio / WhatsApp) |
| 6 | T33 | "Camioneta diésel, km en vacío" | A.7.3 → logística **35 %** de los costos operativos |
| 7 | (salida OUT-01) | "Huella en Excel estimado a mano" | A.7.1 |

- Fragmentos: los marcadores aparecen de a uno, con zoom de cámara a cada zona del diagrama.

**8. La flota está en el lugar equivocado** · `mapa` · escena `hoy`
- Rótulos cortos: "**< 60 %** disponibilidad en zonas críticas (hora pico)" · "**22 %** de viajes no concretados" · "Reporte cada **4 h**" · "Logística: **35 %** de los costos".
- Notas: citas de las entrevistas A.7.2 (supervisor), A.7.3 (chofer), A.7.5 (Customer Success).

**9. Qué queremos lograr (1/2): servicio y cliente** · `escenario`
- Filas "Hoy → Meta · Plazo" con barra animada:
  - Disponibilidad en zonas críticas en hora pico: **< 60 % → ≥ 85 %** · 8 meses
  - Viajes iniciados no concretados: **22 % → < 2 %** · 6 meses
  - Calificación de la app: **3,8 → > 4,5** · 8 meses (antes era 4,6)
  - Retención mensual: **67 % → 80 %** · 8 meses (antes era 82 %)
- Fuente: A.3 (OBJ-01, OBJ-04, OBJ-03.1, OBJ-03.2), A.5.4.

**10. Qué queremos lograr (2/2): eficiencia y licencia** · `escenario`
- Costo logístico sobre el gasto operativo: **35 % → < 20 %** · 12 meses
- Huella de carbono logística: **−25 %** (t CO2e por viaje) · 8 meses
- Reclamos vecinales por obstrucción: **−50 %** · 8 meses
- Licencia municipal: vence en **8 meses** → renovarla
- Línea de tiempo abajo con hitos a 6, 8 y 12 meses.
- Fuente: A.3 (OBJ-02, OBJ-05, OBJ-05.1, OBJ-05.2), A.5.3.

**11. ¿A quién le importa este proceso?** · `escenario`
- Diagrama radial: el proceso al centro y 7 stakeholders alrededor (B.8): Usuarios · Municipio / Autoridad de Tránsito · Logística y técnicos de taller · Dirección / Inversores · Vecinos / comunidad · Área comercial y alianzas · Administración y finanzas.
- Cada uno con dos líneas cortas: **Espera** (expectativa) y **Hoy** (obstáculo). Fragmentos: se resalta uno por vez. Riesgos en notas.

**12. FODA (1/2): Fortalezas y Oportunidades** · `escenario`
- Usar B.9 con frases cortas:
  - F1 Base tecnológica integrada (app, GPS, IoT, pagos) · F2 Escala: 1.550 unidades y 3 depósitos · F3 Telemetría IoT en tiempo real · F4 Vínculo vigente con el municipio · F5 38.000 usuarios, +60 % anual
  - O1 IA predictiva para gestión de flotas · O2 Consumo compartido y conciencia ambiental · O3 Trazabilidad ambiental como diferencial · O4 Ordenar el espacio público: centros en zonas críticas

**13. FODA (2/2): Debilidades y Amenazas** · `escenario`
- D1 Logística a combustión: contrasentido ambiental · D2 Sistemas aislados (monitoreo, taller, reclamos) · D3 Redistribución reactiva (reportes cada 4 h) · D4 Unidades sin batería figuran "disponibles" · D5 Huella reportada en Excel, sin datos auditables
- A1 Competidor internacional con IA predictiva · A2 Licencia vence en 8 meses · A3 Presión regulatoria: sostenibilidad y espacio público · A4 Denuncias por veredas obstruidas · A5 Cambiar de servicio no cuesta nada
- Debajo de cada debilidad, su evidencia en número chico cuando exista (D3 → < 60 % de disponibilidad en zonas críticas; D4 → 22 % de viajes no concretados).

**14. CAME: estrategias** · `escenario`
- Matriz 2×2 con los rótulos del Miro: Ofensiva (Explotar · FO) · Defensiva (Mantener · FA) · Reorientación (Corregir · DO) · Supervivencia (Afrontar · DA).
- 8 estrategias cortas (B.10.2), cada una con los factores cruzados en palabras:
  - FO-1 Analítica predictiva con IA sobre la telemetría actual
  - FO-2 CO₂ evitado como indicador oficial y verificable para el municipio
  - FA-1 Saturación logística preventiva en zonas críticas
  - FA-2 Transparencia (CO₂ evitado, km) y programa de referidos
  - DO-1 Camionetas eléctricas y ruteo dinámico
  - DO-2 Centros fijos de recarga y redistribución
  - DA-1 Integrar taller y app: bloqueo automático de unidades no aptas
  - DA-2 Operativos de retiro y QR para reportes vecinales
- Animación: los factores "vuelan" desde las diapositivas FODA y se cruzan con líneas.

**15. De la estrategia a la mejora** · `escenario`
- Se resaltan los cuadrantes **DA** y **FO** (B.11.1 y B.11.3: la propuesta responde a DA y FO); DO y FA quedan atenuadas como complementarias.
- Frase central: "De una operación **reactiva, manual y fragmentada** → a una gestión **integrada, preventiva y basada en datos en tiempo real**" (B.11.2).

**16. Propuesta de valor: SIOFS** · `mapa` · escena `objetivo`
- Título: "SIOFS · Sistema Integrado de Orquestación Inteligente de Flota y Servicio".
- Chips: **Automatizar · Digitalizar · Integrar · Simplificar**.
- En lugar de describir el sistema, **qué mejora** (una línea cada una, con la etiqueta de función en chico):
  - Ninguna unidad sin batería o con falla aparece disponible (M05) → ataca el 22 %
  - Faltantes anticipados por zona y franja horaria (M02) → disponibilidad ≥ 85 %
  - Redistribución con prioridades y rutas (M03/M04) → menos km en vacío, menos costo y huella
  - Viajes que cierran en zona permitida (M07) → menos obstrucción
  - Indicadores auditables al municipio (M11/M12) → licencia
  - Soporte con la telemetría real del vehículo → reclamos resueltos
- Fuente: B.11.2.

**17. Procesos involucrados** · `escenario`
- Reutilizar el mapa de procesos de la diapositiva 4: **directos** resaltados fuerte (PROC-06, PROC-03, PROC-10, PROC-04, PROC-02, PROC-11) e **indirectos** suave (PROC-08, PROC-05, PROC-01, PROC-07, PROC-09). Fragmentos: al resaltar cada uno, una línea de "qué cambia" (B.11.3).

**18. ¿Por qué es relevante? (alineación estratégica)** · `escenario`
- Matriz de trazabilidad con líneas animadas: **Eje → Objetivo (hoy → meta) → Hallazgo del análisis (FODA) → Función SIOFS**. Usá solo estos vínculos:

| Eje (B.11.4) | Objetivo | Hallazgos del análisis | SIOFS |
|---|---|---|---|
| Disponibilidad | < 60 % → ≥ 85 % · 8 meses | D3, A2 | M02, M03/M04, M06 |
| Calidad del servicio | 22 % → < 2 % · 6 meses | D4, A5 | M05, M02 |
| Eficiencia | 35 % → < 20 % · 12 meses | D3 | M03/M04, M10 |
| Cliente | 3,8 → > 4,5 · 67 % → 80 % · 8 meses | D2, A5 | M05, soporte con telemetría |
| Sostenibilidad / regulación | −25 % huella · −50 % reclamos vecinales · licencia en 8 meses | D1, D5, A2, A4 | M07, M10, M11/M12 |

- IDs de FODA según B.9. En notas: B.11.5 (cómo se asegura el cumplimiento: dato de origen auditable, calificación como resultado, detección de unidades inmovilizadas).

**19. ¿Para quién es valioso?** · `escenario`
- Las tarjetas de stakeholders de la diapositiva 11 **giran** de "Hoy" (obstáculo, B.8) a "Con la mejora" (expectativa, B.11.6): Usuarios · Municipio y comunidad · Operaciones / Logística · Mantenimiento / Recarga · Customer Success · Dirección / Finanzas.

**20. Cierre** · `cierre` · escena `ambiente`
- "Gracias" · "¿Preguntas?".

### Anexos (después del cierre, fuera del conteo y del cronómetro; para preguntas)
- A1 SIPOC (B.6) · A2 Reglas de negocio RN-01 a RN-08 (B.7.2) · A3 Marco regulatorio (B.7.1) · A4 Voces del relevamiento: 5 citas cortas de A.7 · A5 Tendencias que impulsan la mejora (B.4).

### 5.1 Tiempos

Asigná `minutos` a cada diapositiva de modo que la suma sea **≤ 20 minutos**, dejando **1 minuto de margen** (planificá para 19). Reparto orientativo: portada 0,5 · Parte 1 (1–4) ≈ 4 · análisis (5–14) ≈ 10 · mejora (15–19) ≈ 4 · cierre 0,5. Prioridad si hay que recortar: el análisis se mantiene, la mejora se comprime. Si no entra, proponé en `PENDIENTES.md` qué fusionar (ej. 9 y 10, o 18 y 19) sin borrarlo vos.

Con 20 minutos y 20 diapositivas, el promedio es menos de un minuto por diapositiva: escribí las notas del orador para ese ritmo y marcá en `PENDIENTES.md` las diapositivas que en la práctica van a necesitar más tiempo (6, 7 y 8).

---

## 6. Notas del orador

- Una nota por diapositiva (y por fragmento cuando cambie el foco), en español rioplatense, 60–120 palabras, con las cifras exactas y la fuente entre corchetes al final, ej. `[A.5.4]`, `[B.9.3 D4]`.
- Deben permitir exponer sin mirar la pantalla: qué decir, qué señalar en el mapa o diagrama y cómo pasar a la siguiente.

---

## 7. Trazabilidad

- Cada elemento con un dato lleva `data-fuente="A.3 OBJ-04"` (o similar).
- Generá `FUENTES.md`: tabla con **cada número visible** en la presentación, su diapositiva y la sección del contexto de donde sale.

---

## 8. Lo que se reutiliza de la v1 y lo que cambia

| Se reutiliza | Cambia |
|---|---|
| Navegación, barra, contador, hash, swipe, H / N / F | Tema claro, paleta y tamaños nuevos |
| Cámara con zoom y paneo suaves por diapositiva | Mapa: de cuadrícula abstracta nocturna a estilo Google Maps de Córdoba |
| Capa base cacheada, dibujo agrupado, DPR adaptativo | Vehículos: estados nuevos, umbral 20 %, camionetas, escenas `hoy` / `objetivo` |
| Entrada escalonada y `prefers-reduced-motion` | Sin HUD de cifras simuladas; sin estaciones por zona |
| Script de pruebas con Playwright | Fragmentos, vista del orador, cronómetro, vista general, anexos |

---

## 9. Verificación (obligatoria antes de terminar)

1. Abrí la presentación en Chromium (Playwright) y sacá capturas de **cada diapositiva y cada fragmento** a 1920×1080 y 1280×720; también 390×844 para celular. Miralas una por una.
2. Chequeos automáticos:
   - Sin errores de consola (salvo la carga de Google Fonts sin internet).
   - Ningún contenido desborda su contenedor a 16:9.
   - Ningún texto visible con `font-size` calculado menor a 22 px a 1920×1080.
   - Conteo de palabras visibles por diapositiva ≤ ~25 (sin etiquetas de diagramas); listá las que se pasen.
   - Todo número visible aparece en `FUENTES.md` y en `CONTEXTO_E-MOVE.md`.
   - FPS ≥ 55 en las escenas de mapa con la cámara quieta.
3. Probá teclado (incluido PageUp/PageDown de un presentador), fragmentos hacia adelante y atrás, H, N, P, O, F, R, hash y `prefers-reduced-motion`.
4. Corregí todo lo que se vea mal (superposiciones, textos cortados, etiquetas del mapa encima de otras, colores con poco contraste, animaciones bruscas) y volvé a verificar.

---

## 10. Entregables

- `presentacion-emove.html`
- `FUENTES.md` (trazabilidad de cada número)
- `PENDIENTES.md` (dudas, datos que faltan, propuestas de recorte si no entra en el tiempo)
- Al final, un resumen breve: duración total planificada, cantidad de diapositivas, y qué decisiones tomaste ante ambigüedades.
