# E-MOVE · TPI UTN FRC

Presentación del Trabajo Práctico Integrador de **Gestión de la Mejora de Procesos**
(UTN FRC, Ingeniería en Sistemas de Información, 2026) sobre **E-MOVE**, una startup
(ficticia) de micromovilidad eléctrica compartida, y su proceso **«Gestionar el servicio
de movilidad urbana»**.

## Archivos

| Archivo | Qué es |
|---|---|
| `presentacion-emove.html` | **La presentación (v2).** Un solo archivo (HTML + CSS + JS), sin backend ni build: se abre con doble clic y funciona sin internet (solo usa Google Fonts si hay conexión). Tema claro, mapa de Córdoba estilo Google Maps dibujado con código, BPMN redibujado en SVG, 21 diapositivas + 5 anexos, 19 minutos planificados. |
| `FUENTES.md` | Cada número visible, en qué diapositiva aparece y de qué sección del contexto sale. |
| `PENDIENTES.md` | Decisiones ante ambigüedades, propuestas de recorte de tiempo y de palabras, y qué probar en el aula. |
| `CONTEXTO_E-MOVE.md` | Base de conocimiento del caso: única fuente de contenido (A = caso de la cátedra, B = Miro del equipo). |
| `PROMPT_presentacion_E-MOVE.md` | El pedido de la v2 (estructura, diseño, verificación). |
| `referencias/bpmn.png` | Diagrama BPMN del Miro (referencia del redibujo). |
| `emove-presentacion.html` · `contexto-emove.md` | Versión 1 (tema oscuro) y su documentación técnica. Su contenido quedó reemplazado por la v2. |
| `analisis-presenton.md` · `presenton/` | Análisis de [Presenton](https://github.com/presenton/presenton) y un payload para generar un PPTX. **El payload está armado con el contenido de la v1** (incluye datos que no están en el caso, como el benchmarking con Grin): no usarlo sin actualizarlo. |
| `rtk-setup.md` | Cómo dejar instalado el hook de rtk (ahorro de tokens en Claude Code). |

## Cómo exponer

Abrir `presentacion-emove.html` en Chrome o Edge y poner pantalla completa (`F`).

| Tecla | Acción |
|---|---|
| → ↓ Espacio PageDown Enter | Siguiente paso (los fragmentos se revelan antes de pasar de diapositiva) |
| ← ↑ PageUp Backspace | Paso anterior |
| Home · End | Portada · cierre |
| `H` | Oculta el panel: queda solo el mapa |
| `N` | Notas del orador con cronómetro (transcurrido, tiempo de la diapositiva, desvío) |
| `P` | Vista del orador en otra ventana (actual + próxima + notas + cronómetro), sincronizada |
| `O` | Vista general en grilla |
| `F` | Pantalla completa |
| `R` | Reinicia el cronómetro |
| `Esc` | Cierra notas y vista general |

La URL guarda diapositiva y paso (`#9.2`). En celular se navega con swipe.

Integrantes, duración y textos de portada se editan al principio del archivo, en
`window.EMOVE_CONFIG`.
