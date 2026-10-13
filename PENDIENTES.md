# PENDIENTES · dudas, decisiones y propuestas de recorte

## 1. Tiempo (20 minutos)

Plan cargado en la presentación: **19:00** (1 minuto de margen). La suma se ve en las notas
del orador (tecla N) y en la vista del orador (tecla P), con el desvío en vivo.

| Bloque | Diapositivas | Minutos |
|---|---|---|
| Portada | 00 | 0,5 |
| Parte 1 · La organización | 01–04 | 4 |
| Análisis | 05–14 | 10,25 |
| Mejora | 15–19 | 3,75 |
| Cierre | 20 | 0,5 |
| **Total** | | **19,0** |

**Diapositivas que en la práctica van a necesitar más tiempo**: 06 (BPMN, 5 fases + vista
general), 07 (7 fallas) y 08 (escena «hoy»). Ya tienen asignado 1,75, 1,5 y 1,25 minutos.

**Si no entra, qué fusionar** (no borré nada):
- 09 + 10 (objetivos): quedarse con las cuatro filas «Hoy → Meta» más críticas (disponibilidad,
  no concretados, costo logístico, licencia) en una sola diapositiva. Ahorra ~0,5 min.
- 18 + 19 (alineación y valor): mostrar solo la matriz y decir el valor por stakeholder en las
  notas. Ahorra ~0,5 min.
- 07: si el tiempo aprieta, mostrar la vista general con los 7 marcadores juntos (último paso,
  `#7.8`) en lugar de recorrerlos uno por uno.

## 2. Palabras visibles por encima de ~25

Conteo automático del texto visible en el último paso de cada diapositiva, sin etiquetas de
diagramas (BPMN, ciclo, mapa de procesos, radial, matrices, tarjetas):

| Diap. | Palabras | Por qué | Propuesta |
|---|---|---|---|
| 16 · SIOFS | 46 | El prompt pide el nombre completo (8 palabras), los 4 chips y 6 líneas de «qué mejora» con su etiqueta | Sacar los chips Automatizar/Digitalizar/Integrar/Simplificar y decirlos en voz alta; o dejar solo «SIOFS» y el nombre en notas |
| 03 · Propósito | 33 | Misión + visión + 5 valores + rótulos | Sacar los rótulos «Misión / Visión / Valores» o dejar los valores solo como íconos |
| 10 · Objetivos 2/2 | 28 | Subtítulos de cada métrica y «MESES» ×4 | Aceptable; se puede quitar «sobre el gasto operativo» |
| 02 · Cómo funciona | 27 | 5 pasos con subtítulo + 3 clientes | Aceptable |
| 09 · Objetivos 1/2 | 26 | — | Aceptable |

La portada (40) no cuenta: el límite no rige para la lista de integrantes.

## 3. Decisiones ante ambigüedades

| Tema | Qué hice |
|---|---|
| F2 en el FODA | El prompt pedía «1.550 unidades», pero esa cifra es de la lista de la matriz CAME (B.10.1). Como el FODA usa B.9, puse la redacción de B.9.1 F2: «1.200 scooters + 350 bicis, 3 depósitos». El 1.550 aparece en las notas de FA-1 (B.10.2) |
| Ciudad | Córdoba en el mapa; las notas no dicen que el caso nombra la ciudad (A.1 dice que no la nombra) |
| FO-2 | Verbo agregado según el prompt: «Medir con la telemetría el CO₂ que evitan los viajes…» (en pantalla: «CO₂ evitado como indicador oficial y verificable») |
| Huella | «t CO2e por viaje» (A.3), no «t CO2» (Miro) |
| BPMN | Presentado como proceso actual. La numeración T01–T35 / G01–G09 coincide con la transcripción de B.12 |
| PROC-07 | «Gestionar la administración» (nombre del mapa, B.3) |
| RN-01, RN-03, RN-06 | En el anexo A2 llevan la marca «la propuesta la formaliza» (B.11.2: hoy inexistentes) |
| DO y FA | Solo como complementarias (diap. 15, notas); no se desarrollan porque no están en el material (B.0) |
| Nueva Córdoba | Zona crítica por decisión del equipo (facultades y oficinas, contigua a Ciudad Universitaria) |
| Parque Sarmiento | Zona de operación por pedido del equipo; no es crítica ni residencial |
| Depósitos | 3 íconos con la leyenda «ubicación ilustrativa»: el caso no la da |
| Escena «hoy» | Proporción ilustrativa de cruces rojas del 22 %; el medidor baja hasta «< 60 %» frente a la meta de 85 %; reloj de 06:00 a 10:00 (un intervalo de reporte de 4 h) que termina con el aviso de A.7.2. No se inventaron horarios pico |
| Escena «objetivo» | Las camionetas siguen siendo a combustión (cambiarlas es DO-1, fuera de SIOFS) |
| Umbral de batería | 20 % (RN-01), solo en notas y en el anexo; no se muestra en el mapa |
| Largo de las notas | Las diapositivas con una sola nota tienen entre 82 y 108 palabras. En las que tienen pasos (02, 04, 06, 07, 11, 14, 15, 17, 18, 19) la explicación se reparte en una nota por paso, de 9 a 77 palabras cada una, así que varias quedan por debajo de 60. Los anexos tienen notas breves (22 a 53), porque son para preguntas |

## 4. Para probar en el aula

- **Vista del orador (P)**: abre una ventana emergente. Con `file://` funciona, pero el
  navegador tiene que permitir ventanas emergentes para ese archivo.
- **Presentador inalámbrico**: probado con las teclas PageUp / PageDown (eventos de teclado);
  conviene confirmarlo con el dispositivo real.
- **Pantalla completa (F)**: el modo sin pantalla de las pruebas no la puede verificar.
- **Sin internet**: las tipografías vienen de Google Fonts; sin conexión se usan las del sistema y
  todo sigue funcionando (el mapa, los íconos y los diagramas están incrustados).
- **Proyector**: verificado a 1920×1080 y 1280×720; el contenido escala como una caja 16:9.

## 5. Limitaciones conocidas

- La **vista general** del BPMN (diap. 06, último paso; diap. 07, primero y último) muestra el
  diagrama entero, así que su texto queda chico: no es un zoom de lectura. Las vistas por fase y
  por falla están todas por encima de 22 px.
- En **celular** el BPMN completo se ve muy chico; con los pasos (zoom por fase) se lee.
- La geografía del mapa es aproximada (escala y posiciones tomadas de la captura de referencia);
  solo se nombran las calles y referencias que aparecen en esa captura.
- La captura de Google Maps no se subió al repositorio (es material de terceros); el diagrama BPMN sí
  está en `referencias/`.

## 6. Presenton

Se usó como librería en lo que aporta a este formato: el set de íconos Phosphor que trae
(`servers/fastapi/static/icons`, 9.073 SVG en 6 pesos; licencia MIT). Se incrustaron 38 íconos
de trazo para la interfaz y 12 rellenos como trazos para el canvas del mapa. El motor de
render de Presenton no sirve para esta entrega: genera diapositivas estáticas en un lienzo de
1280×720 y necesita un modelo de IA, mientras que esta presentación es un único HTML con el mapa
animado y sin dependencias (ver `analisis-presenton.md`).
