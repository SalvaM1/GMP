# FUENTES · trazabilidad de cada número visible

Presentación: `presentacion-emove.html`. Fuente única de contenido: `CONTEXTO_E-MOVE.md`
(secciones A = caso de la cátedra, B = tablero Miro del equipo).

La columna «Diap.» usa la numeración de la presentación (portada = 00, cierre = 20, anexos A1–A5).
Cada elemento con un dato lleva además el atributo `data-fuente` en el HTML.

**Verificación automática.** El script de Playwright extrajo todos los tokens numéricos
visibles de cada diapositiva (en su último paso) y buscó cada uno en `CONTEXTO_E-MOVE.md`.
**Todos aparecen en el contexto**, salvo los legajos de la portada, que vienen del enunciado del
prompt (lista de integrantes), no del caso.

No se calculó ninguna cifra nueva: no hay porcentajes, promedios ni totales derivados.

## Cifras del caso

| Diap. | Cifra en pantalla | Qué es | Fuente |
|---|---|---|---|
| 01 | 1.200 | scooters eléctricos | A.1 Flota · A.8 |
| 01 | 350 | bicicletas eléctricas | A.1 Flota · A.8 |
| 01 | +38.000 | usuarios registrados («más de 38.000») | A.1 Usuarios · A.8 |
| 01 | ~9.500 | viajes por día («unos 9.500») | A.1 Uso · A.8 |
| 01 | +60 % | crecimiento de usuarios activos en el último año | A.1 Crecimiento · A.8 |
| 01 | 3 años | antigüedad | A.1 Fundación · A.8 |
| 01 | 48 colaboradores | colaboradores directos | A.1 · A.8 |
| 01 | 3 depósitos | depósitos operativos | A.1 · A.8 |
| 03 | 2028 | año de la visión | A.2 · B.1 |
| 03 | 48 | colaboradores directos | A.1 · B.1.1 |
| 03 | 22 · 7 · 6 · 5 · 3 · 3 · 2 | personas por área (Operaciones, IT, Adm. y Finanzas, Comercial, Dirección, Compras, RR. HH.) | B.1.1 AREA-01 a AREA-07 |
| 06 | 35 tareas · 9 compuertas · 4 carriles | conteo de T01–T35, G01–G09, L1–L4 | B.12 |
| 06 | T01–T09 … T29–T35 | rangos de tareas por fase | B.12 |
| 07 | 22 % | viajes iniciados no concretados | A.5.4 · A.7.5 |
| 07 | +35 % | incremento de reclamos de usuarios | A.5.4 |
| 07 | 10:00 | «la zona universitaria se quedó sin unidades a las 10:00» | A.7.2 |
| 07 | cada 4 horas | frecuencia del reporte de ocupación | A.5.2 · A.7.2 |
| 07 | 35 % | peso de la logística en los costos operativos | A.5.4 |
| 07 | OUT-01 | salida «Registros operativos del servicio» | B.6.2 |
| 08 | < 60 % | disponibilidad en zonas críticas en hora pico | A.5.4 · A.3 OBJ-01 |
| 08 | 22 % | viajes no concretados | A.5.4 · A.7.5 |
| 08 | 4 h | frecuencia de los reportes de ocupación | A.5.2 · A.8 |
| 08 | 35 % | logística sobre los costos operativos | A.5.4 |
| 08 (mapa) | 85 % | línea de meta del medidor: exigencia municipal en zonas críticas | A.5.3 |
| 08 (mapa) | < 60 % | valor que muestra el medidor al final de la escena | A.5.4 |
| 08 (mapa) | 06:00 → 10:00 · «cada 4 h» | reloj ilustrativo: un intervalo de reporte que termina a las 10:00 | A.5.2 · A.7.2 |
| 09 | < 60 % → ≥ 85 % · 8 meses | disponibilidad mínima en zonas críticas | A.3 OBJ-01 |
| 09 | 22 % → < 2 % · 6 meses | viajes iniciados no concretados | A.3 OBJ-04 |
| 09 | 3,8 → > 4,5 · 8 meses · antes 4,6 | calificación de la app | A.3 OBJ-03.1 · A.5.4 |
| 09 | 67 % → 80 % · 8 meses · antes 82 % | retención mensual | A.3 OBJ-03.2 · A.5.4 |
| 10 | 35 % → < 20 % · 12 meses | costos logísticos sobre el gasto operativo | A.3 OBJ-02 |
| 10 | −25 % · t CO2e por viaje · 8 meses | huella de carbono de la logística | A.3 OBJ-05.1 |
| 10 | −50 % · 8 meses | reclamos vecinales por obstrucción | A.3 OBJ-05.2 |
| 10 | vence en 8 meses | licencia municipal | A.3 OBJ-05 · A.5.3 |
| 10 | 6 · 8 · 12 meses | hitos de la línea de tiempo (plazos de los objetivos) | A.3 |
| 11 | 85 % | expectativa del municipio | B.8 STK-02 |
| 11 | < 20 % | expectativa de Dirección y de Administración y finanzas | B.8 STK-04 · STK-07 |
| 12 | 1.200 scooters + 350 bicis, 3 depósitos | F2 | B.9.1 F2 |
| 12 | 38.000 usuarios, +60 % anual | F5 | B.9.1 F5 |
| 13 | cada 4 h | D3 | B.9.3 D3 |
| 13 | < 60 % | evidencia de D3 | B.9.3 resultados actuales |
| 13 | 22 % | evidencia de D4 | B.9.3 resultados actuales |
| 13 | 8 meses | A2 | B.9.4 A2 |
| 16 | → 22 % | qué ataca M05 | B.11.2 · A.5.4 |
| 16 | → ≥ 85 % | qué persigue M02 | B.11.4 · A.3 OBJ-01 |
| 16 (mapa) | 85 % · ≥ 85 % | meta del medidor en el escenario objetivo | A.5.3 · B.11.4 |
| 18 | < 60 % → ≥ 85 % · 8 meses | eje Disponibilidad | B.11.4 · A.3 OBJ-01 |
| 18 | 22 % → < 2 % · 6 meses | eje Calidad del servicio | B.11.4 · A.3 OBJ-04 |
| 18 | 35 % → < 20 % · 12 meses | eje Eficiencia | B.11.4 · A.3 OBJ-02 |
| 18 | 3,8 → > 4,5 · 67 % → 80 % · 8 meses | eje Cliente | B.11.4 · A.3 OBJ-03 |
| 18 | −25 % · −50 % · licencia en 8 meses | eje Sostenibilidad / regulación | B.11.4 · A.3 OBJ-05 |
| 19 | 85 % | expectativa de Municipio y comunidad con la mejora | B.11.6 |
| 19 | 35 % | logística sobre el gasto (obstáculo de Dirección / Finanzas) | B.8 STK-04 · STK-07 · A.5.4 |
| A1 | 1.200 scooters, 350 bicis | entrada IN-04 | B.6.1 |
| A1 | Ley N° 24.449 | entrada IN-15 | B.6.1 |
| A2 | 20 % | RN-01 | B.7.2 |
| A2 | 85 % | RN-06 | B.7.2 |
| A3 | Ley N° 24.449 · Ley N° 25.326 · Ordenanza N° 13.549 · 85 % | RX-01 · RX-02 · RM-07 · RM-01 | B.7.1 |
| A4 | 22 % | cita de Customer Success | A.7.5 |
| A5 | 24 horas · cada 4 horas | TEND-02 · TEND-03 | B.4.1 |

## Identificadores (no son datos)

Aparecen como rótulos y se copian tal cual del contexto: PROC-01 a PROC-11 (A.4 · B.2 · B.3),
T01–T35 y G01–G09 (B.12), F1–F5 · O1–O4 · D1–D5 · A1–A5 (B.9), FO-1 … DA-2 (B.10.2),
SIOFS-M02 … M12 (B.11.2), RN-01 … RN-08 (B.7.2), OUT-01 (B.6.2), referencias A.7.1–A.7.5.
Los números del 1 al 7 del ciclo (diap. 05) y de los marcadores (diap. 07) son ordinales.

## Datos que no salen del caso

| Diap. | Dato | Origen |
|---|---|---|
| 00 | Legajos y nombres de los integrantes | Enunciado del prompt (configurables en `EMOVE_CONFIG.INTEGRANTES`) |
| 00 · 20 | 2026 | «TPI 2026» (encabezado de `CONTEXTO_E-MOVE.md`) |
| mapa | Geografía de Córdoba, nombres de calles y barrios | Captura de referencia del mapa. El caso no nombra la ciudad; el equipo la ubica en Córdoba (B.7.1 RM-07) |
| mapa | Ubicación de los 3 depósitos | Ilustrativa: el caso no la da (A.1). Rotulada en la leyenda |
| mapa | Muestra de 140 unidades | Ilustrativa; proporción scooters/bicis según 1.200/350 (A.1). Sin contadores en pantalla |
