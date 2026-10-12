# E-MOVE · TPI UTN FRC

Presentación del Trabajo Práctico Integrador de **E-MOVE**, una startup (ficticia) de
bicis y scooters eléctricos compartidos en Córdoba capital.

## Archivos

| Archivo | Qué es |
|---|---|
| `emove-presentacion.html` | La presentación para exponer en vivo. Un solo archivo (HTML + CSS + JS), sin backend ni build: se abre con doble clic. Fondo: simulación animada de la operación sobre un mapa estilizado de Córdoba. |
| `contexto-emove.md` | Contexto completo del proyecto: pedido original, cómo está construido el HTML, geografía y parámetros de la simulación, controles y verificación hecha. |
| `analisis-presenton.md` | Análisis del repositorio [Presenton](https://github.com/presenton/presenton) para sacar una versión PPTX/PDF de entrega: cómo funciona, qué plantilla usar y qué limitaciones tiene. |
| `presenton/emove-payload.json` | Cuerpo listo de `POST /api/v1/ppt/presentation/generate`: las 11 diapositivas en markdown, con notas del orador e instrucciones de estilo. |
| `presenton/generar-pptx.sh` | Levanta Presenton en Docker y genera el PPTX con ese payload. |
| `presenton/layouts-sugeridos.json` | Mapeo propuesto de cada diapositiva a un diseño de la plantilla `dynamic`. |

## Cómo exponer

Abrir `emove-presentacion.html` en el navegador y poner pantalla completa (tecla `F`).

- **Avanzar / retroceder**: flechas, barra espaciadora, PageUp/PageDown (sirve con
  presentador inalámbrico), o swipe en celular.
- **`H`**: oculta el panel de texto y deja solo el mapa.
- **`N`**: muestra las notas del orador de la diapositiva actual.
- **`F`**: pantalla completa. **`Esc`**: cierra las notas.

## Cómo generar el PPTX de entrega

Requiere Docker y una clave de un proveedor de IA (Presenton siempre necesita un
modelo). Ver `analisis-presenton.md` para el detalle.

```bash
export ANTHROPIC_API_KEY="sk-ant-..."
./presenton/generar-pptx.sh
```
