---
documento: E-MOVE_KNOWLEDGE_BASE
version: "2.0"
estructura: "separada por fuente"
fecha_construccion: "2026-10-12"
idioma: es-AR
proyecto: "TPI Gestión de la Mejora de Procesos (GMP) — Caso E-MOVE"
institucion: "UTN — Facultad Regional Córdoba — Ingeniería en Sistemas de Información — 2026"
organizacion_analizada: "E-MOVE (organización ficticia)"
partes:
  A: "Caso de estudio — PDF 'CASO TPI E-MOVE.pdf' (4 páginas)"
  B: "Tablero Miro del equipo — texto pegado e imágenes (mapa de procesos y BPMN)"
version_anterior: "E-MOVE_KNOWLEDGE_BASE_v1_integrada.md (versión integrada con análisis propio: trazabilidad, KPI consolidados, inconsistencias)"
---

# E-MOVE — Base de conocimiento separada por fuente

## Cómo leer este documento

- **Parte A** contiene únicamente lo que dice el **caso de estudio** (enunciado de la cátedra). Son los hechos del escenario.
- **Parte B** contiene únicamente lo que el equipo desarrolló en el **tablero Miro** (texto pegado + imágenes). Son el análisis y las decisiones del equipo; las propuestas de la Parte B **no están implementadas**.
- Cuando un mismo dato aparece en ambas fuentes, figura en las dos partes.
- No se agrega análisis propio. Los identificadores (OBJ-xx, PROC-xx, RN-xx, F1, etc.) son solo etiquetas para ubicar contenido; se mantienen iguales en ambas partes cuando refieren a lo mismo.
- El análisis cruzado (inconsistencias entre fuentes, matriz de trazabilidad, KPI consolidados, decisiones) está en la versión anterior: `E-MOVE_KNOWLEDGE_BASE_v1_integrada.md`.

## Índice

**Parte A — Caso de estudio**
- [A.1 Datos generales de la organización](#a1)
- [A.2 Misión, visión y cultura](#a2)
- [A.3 Objetivos](#a3)
- [A.4 Procesos de la organización](#a4)
- [A.5 Situación actual](#a5)
- [A.6 Funcionamiento](#a6)
- [A.7 Entrevistas del relevamiento](#a7)
- [A.8 Resumen de datos cuantitativos del caso](#a8)

**Parte B — Tablero Miro**
- [B.0 Material recibido](#b0)
- [B.1 Organización](#b1)
- [B.2 Objetivos de procesos](#b2)
- [B.3 Mapa de procesos](#b3)
- [B.4 Motivaciones de la organización (impulsores y demandas de mejora)](#b4)
- [B.5 Definición del proceso elegido para la mejora](#b5)
- [B.6 SIPOC](#b6)
- [B.7 Marco regulatorio y reglas internas](#b7)
- [B.8 Grupos de interés del proceso (stakeholders)](#b8)
- [B.9 Análisis FODA del proceso](#b9)
- [B.10 CAME — Perfil de la mejora del proceso](#b10)
- [B.11 Propuesta de mejora y alineación estratégica (SIOFS)](#b11)
- [B.12 Diagrama BPMN del proceso](#b12)

---

# PARTE A — CASO DE ESTUDIO

Fuente: "CASO TPI E-MOVE.pdf" — UTN FRC, Gestión de la Mejora de Procesos, Trabajo Práctico Integrador 2026, "Descripción del dominio". Dominio: **Servicios Tecnológicos de Micromovilidad Urbana Compartida y Sustentable**.

<a id="a1"></a>
## A.1 Datos generales de la organización

| Atributo | Contenido |
|---|---|
| Nombre | E-MOVE |
| Tipo | Startup tecnológica de tamaño mediano |
| Sector | Servicios de movilidad urbana sustentable |
| Actividad | Provisión de un sistema compartido de scooters y bicicletas eléctricas mediante una plataforma digital interactiva |
| Colaboradores | 48 colaboradores directos |
| Ámbito | Operaciones concentradas en una gran urbe de más de un millón de habitantes (la ciudad no se nombra) |
| Sede central | Mantiene el centro de monitoreo digital |
| Despliegue logístico y operativo | Distribuido estratégicamente en tres depósitos operativos urbanos |
| Fundación | Hace tres años, por emprendedores tecnológicos |
| Premisa fundacional | Ofrecer una alternativa eficiente y ambientalmente responsable frente a la creciente congestión vehicular y la contaminación urbana |
| Modelo de negocio | Generación de ingresos por uso a través de una aplicación móvil para localizar, desbloquear por código QR, utilizar, pagar y finalizar viajes |
| Esquema comercial complementario | Acuerdos institucionales con el municipio local; convenios corporativos con empresas que promueven la movilidad sustentable entre sus empleados |
| Flota | 1.200 scooters eléctricos y 350 bicicletas eléctricas |
| Plataforma | Flota integrada a una plataforma digital de geolocalización, pasarela de pagos y reportes de ocupación territorial |
| Crecimiento | +60 % de usuarios activos en el último año |
| Usuarios | Más de 38.000 usuarios registrados |
| Uso | Promedian unos 9.500 viajes diarios |

<a id="a2"></a>
## A.2 Misión, visión y cultura

- **Misión:** brindar soluciones de movilidad urbana compartida, accesibles y ambientalmente responsables, integrando tecnología, gestión operativa y servicio al usuario para reducir la dependencia del transporte individual motorizado.
- **Visión:** consolidar a la organización como la plataforma local de micromovilidad sustentable más confiable y escalable para el año **2028**, reconocida por su disponibilidad, seguridad, eficiencia operativa y contribución verificable a la reducción de la huella de carbono urbana.
- **Cultura organizacional** (valores que guían el despliegue):

| ID | Valor |
|---|---|
| VAL-01 | Sustentabilidad con evidencia |
| VAL-02 | Orientación al usuario |
| VAL-03 | Seguridad operativa |
| VAL-04 | Innovación aplicada |
| VAL-05 | Mejora continua |

<a id="a3"></a>
## A.3 Objetivos

Propósito declarado: sostener el plan de expansión, defender la posición competitiva frente al nuevo operador internacional y responder a las exigencias regulatorias. La dirección estableció estas metas prioritarias para los próximos meses:

| ID | Plano | Objetivo | Situación actual | Meta | Plazo |
|---|---|---|---|---|---|
| OBJ-01 | Operativo y de cobertura territorial | Garantizar una disponibilidad mínima de la flota en zonas críticas y de alta demanda durante los horarios pico | Disponibilidad menor al 60 % | 85 % mínimo | Máximo 8 meses |
| OBJ-02 | Eficiencia financiera | Reducir el impacto de los costos logísticos de redistribución sobre el gasto operativo total | 35 % | Inferior al 20 % | 12 meses |
| OBJ-03.1 | Fidelidad y satisfacción del cliente | Elevar la calificación promedio en la aplicación móvil | 3,8 puntos | Más de 4,5 (sobre 5) | 8 meses |
| OBJ-03.2 | Fidelidad y satisfacción del cliente | Aumentar el índice de retención mensual | 67 % | 80 % | 8 meses |
| OBJ-04 | Excelencia operativa del servicio | Erradicar de forma sustancial las fallas de disponibilidad en origen: reducir el porcentaje de viajes iniciados no concretados (por falta de unidad o batería insuficiente) | 22 % | Inferior al 2 % | 6 meses |
| OBJ-05 | Propuesta de valor y sostenibilidad institucional | Asegurar de manera crítica la renovación de la licencia municipal de operación antes de su vencimiento | Vence en 8 meses | Renovación | 8 meses |
| OBJ-05.1 | (para lograr OBJ-05) | Demostrar una reducción de la huella de carbono de la logística de distribución, mediante la optimización de sus recorridos | — | −25 %, medida en toneladas de CO2e por viaje | 8 meses |
| OBJ-05.2 | (para lograr OBJ-05) | Disminuir los reclamos vecinales por obstrucción de la vía pública | — | −50 % | 8 meses |

Relaciones que establece el caso:
- OBJ-04 se plantea "para apalancar" el resultado de OBJ-03 desde la excelencia operativa del servicio.
- OBJ-05.1 y OBJ-05.2 son compromisos de la compañía para lograr OBJ-05.

<a id="a4"></a>
## A.4 Procesos de la organización

| ID | Proceso (nombre del caso) | Clasificación del caso | Objetivo |
|---|---|---|---|
| PROC-01 | Dirección estratégica y expansión | Estratégico | Definir las prioridades de crecimiento, metas de volumen, ciudades objetivo y criterios de asignación de recursos para sostener la propuesta de valor sin comprometer la calidad ni la sustentabilidad. |
| PROC-02 | Gestión regulatoria, alianzas y sostenibilidad | Estratégico | Gestionar la relación con el municipio, empresas y aliados comerciales para asegurar la licencia de operación, zonas habilitadas, compromisos institucionales e indicadores verificables de reducción de huella de carbono. |
| PROC-03 | Innovación y tecnología | Estratégico | Evaluar, priorizar e incorporar soluciones digitales, analítica de demanda y modelos predictivos para mejorar la disponibilidad, seguridad y eficiencia de la flota. |
| PROC-04 | Gestión de sostenibilidad | Estratégico | Definir políticas, objetivos e indicadores de sostenibilidad ambiental para orientar la operación y el crecimiento de E-MOVE, asegurando la medición y reducción de la huella de carbono y el cumplimiento de los compromisos ambientales asumidos ante el municipio y demás grupos de interés. |
| PROC-05 | Gestión de comercialización | Operativo (Clave) y su cadena de valor; "CORE" | Convertir el mercado potencial en demanda efectiva y recurrente del servicio, captando, incorporando, activando, reteniendo y fidelizando usuarios individuales y clientes corporativos mediante campañas, promociones, convenios y acciones comerciales, con el propósito de generar una base de usuarios habilitados y sostener el crecimiento rentable del servicio. |
| PROC-06 | Gestión del servicio de movilidad urbana (también "Gestión Integral del Servicio de Movilidad Urbana") | Operativo (Clave) y su cadena de valor; "CORE" | Transformar la necesidad de traslado de un usuario habilitado en un viaje disponible, seguro, monitoreado, correctamente finalizado y cobrado, asegurando la disponibilidad territorial y técnica de la flota, su redistribución, recarga y mantenimiento, así como la resolución de incidentes asociados al servicio, con el propósito de brindar una experiencia confiable, eficiente y sustentable. |
| PROC-07 | Gestión administrativa | Soporte | Gestionar la documentación, los registros y los circuitos administrativos de la organización, asegurando la integridad, disponibilidad y trazabilidad de la información necesaria para respaldar las operaciones y el cumplimiento de las obligaciones de E-MOVE. |
| PROC-08 | Gestión financiera | Soporte | Administrar los recursos financieros mediante la gestión de ingresos, cobranzas, pagos, flujo de fondos, presupuestos y control financiero, con el propósito de asegurar la disponibilidad de fondos y contribuir a la sostenibilidad económica de E-MOVE. |
| PROC-09 | Gestión de compras y abastecimiento | Soporte | Gestionar la adquisición y provisión oportuna de bienes y servicios requeridos por la organización, desde la identificación de la necesidad y la selección de proveedores hasta la recepción y disponibilidad de los recursos, asegurando condiciones adecuadas de costo, calidad y plazo. |
| PROC-10 | Gestión de infraestructura IT y ciberseguridad | Soporte | Mantener la disponibilidad, seguridad y conectividad de la aplicación móvil, pasarelas de pago, geolocalización, bases de datos y tableros de monitoreo. |
| PROC-11 | Gestión de talento humano | Soporte | Seleccionar, capacitar y coordinar los perfiles operativos, tecnológicos, comerciales y de soporte necesarios para la continuidad y mejora del servicio. |

<a id="a5"></a>
## A.5 Situación actual

### A.5.1 Estructura

E-MOVE opera bajo una estructura funcional articulada en torno a áreas principales: Dirección General, Operaciones y Logística, Tecnología e IT, Comercial y Alianzas, Administración, Finanzas y Compras/Abastecimiento. (El caso no informa la dotación por área.)

### A.5.2 Infraestructura tecnológica e información operativa

- Existe un centro de monitoreo digital que recibe la ubicación y el estado de las unidades.
- La gestión de la información operativa en campo presenta una **severa fragmentación**:
  - El centro de monitoreo emite reportes estáticos de ocupación territorial **únicamente cada cuatro horas**.
  - Los supervisores de logística evalúan esos reportes **de forma manual**, asignando rutas a los equipos de campo de manera **reactiva**.
  - El registro de recargas de batería, el historial de reparaciones en depósitos y el sistema de reclamos de usuarios funcionan en **plataformas aisladas**, sin integración con el sistema de planificación central.

### A.5.3 Contexto de mercado y presión regulatoria

- El mercado de la micromovilidad urbana atraviesa una transformación acelerada.
- La reciente entrada de un **competidor internacional** y la inminente **renovación de la licencia municipal en 8 meses** imponen una alta presión operativa.
- El municipio exige estándares estrictos:
  - 85 % de disponibilidad mínima en zonas críticas (universidades, áreas bancarias y de oficinas);
  - evidencia técnica de reducción de huella de carbono;
  - erradicación de unidades abandonadas que obstruyen la vía pública.

### A.5.4 Síntomas de fricción operativa

El crecimiento del 60 % en la base de usuarios colapsó la capacidad de respuesta de la startup, que mantiene prácticas de gestión diseñadas para una escala menor. Síntomas:

**Dinámica logística y disponibilidad**
- La redistribución de unidades se ejecuta mediante camionetas utilitarias a combustión interna.
- Al basarse en decisiones manuales sobre reportes cada cuatro horas, las cuadrillas llegan tarde a los picos de demanda.
- Esto provoca que en horas pico la disponibilidad en zonas críticas caiga **por debajo del 60 %**, mientras en barrios residenciales se acumulan unidades ociosas.
- Esta falta de sincronización genera que el **22 %** de los viajes iniciados no se concreten por falta de vehículo o batería insuficiente, provocando un **incremento del 35 % en los reclamos de usuarios**.

**Costos e impacto ambiental**
- El traslado reactivo e ineficiente hace que la logística absorba el **35 % de los costos operativos totales**.
- El uso intensivo de utilitarios a combustión para mover scooters genera un **contrasentido ambiental** cuestionado por los usuarios en redes sociales, que debilita la propuesta de valor verde y pone en riesgo la renovación de la licencia.

**Deterioro de la experiencia de usuario**
- La falta de integración entre el estado de la batería, la ubicación real y la gestión de reclamos deriva en respuestas automatizadas poco resolutivas.
- Como consecuencia, la calificación de la app cayó de **4,6 a 3,8** puntos y la retención mensual descendió del **82 % al 67 %**.

<a id="a6"></a>
## A.6 Funcionamiento

- **Cadena de valor:** se inicia con el proceso CORE **Gestión de Comercialización**. Mediante campañas, promociones, convenios corporativos y acciones de comunicación, E-MOVE capta potenciales usuarios, facilita su registro y activación comercial y promueve la recurrencia de uso. Su resultado es un **usuario habilitado** y estimulado a usar el servicio, o un **cliente corporativo con convenio vigente**, que constituye una entrada del proceso CORE **Gestión Integral del Servicio de Movilidad Urbana**.
- **Disparador del servicio:** un usuario habilitado manifiesta una necesidad de traslado y localiza una unidad disponible en la aplicación.
- **El proceso comprende:** localización y desbloqueo del vehículo; validación de su aptitud y del medio de pago; uso y monitoreo mediante telemetría IoT; cierre del viaje; estacionamiento en zona permitida; cobro.
- **Para sostener la disponibilidad**, también integra la redistribución de la flota, la recarga y el mantenimiento de unidades y la atención de incidentes.
- **Hoy** esas actividades se apoyan en reportes de ocupación cada cuatro horas, decisiones manuales de redistribución y sistemas no integrados, lo que genera las brechas operativas descriptas.

<a id="a7"></a>
## A.7 Entrevistas del relevamiento

El caso anexa entrevistas con personal clave para comprender los procesos CORE y, en especial, las brechas de la Gestión Integral del Servicio de Movilidad Urbana. Contenido resumido:

### A.7.1 Directora de Alianzas y Gestión Regulatoria
- En 8 meses vence la licencia de operación; la renovación está condicionada a tres exigencias clave:
  1. garantizar un 85 % de disponibilidad de vehículos en zonas de oficinas y universidades;
  2. reducir las denuncias de vecinos por scooters tirados en las veredas;
  3. demostrar con datos auditables que la operación logística reduce emisiones en lugar de generarlas.
- Hoy el municipio pide reportes de huella de carbono y se envían en **planillas Excel estimadas a mano**.
- Acaba de desembarcar un competidor internacional que promete al municipio **disponibilidad predictiva mediante algoritmos de IA**.
- Si no se automatiza esta gestión y se profesionaliza la trazabilidad ambiental, hay riesgo real de **perder la concesión**.

### A.7.2 Supervisor del Centro de Monitoreo Digital
- Ven scooters y bicis en un **mapa en tiempo real**, pero la herramienta emite reportes de ocupación territorial recién **cada 4 horas**.
- Ejemplo: cuando el reporte muestra que la zona universitaria se quedó sin unidades a las 10:00, la necesidad ya pasó.
- No hay ningún modelo que anticipe dónde harán falta unidades según la hora, el clima o la agenda de la ciudad.
- Mira el reporte estático, calcula **"a ojo"** cuántas camionetas mandar y **llama por teléfono** a los choferes; gestión "totalmente artesanal".

### A.7.3 Chofer de Cuadrilla de Logística y Redistribución
- Arrancan el turno en una camioneta utilitaria **a diésel**; les avisan por **radio o WhatsApp** adónde ir a juntar scooters.
- Dan vueltas por la ciudad buscando las unidades marcadas por el supervisor; pierden tiempo en el tráfico.
- Al llegar a la zona residencial, a menudo los scooters ya fueron tomados o están escondidos dentro de un edificio.
- Recorren "muchísimos kilómetros **en vacío**", dando vueltas a ciegas.
- La gente les saca fotos y los critica en redes porque promueven el transporte verde pero andan todo el día en camionetas a combustión.

### A.7.4 Técnico de Mantenimiento y Recarga (Depósito Operativo)
- El flujo de ingreso de unidades al taller es un **caos**: las camionetas traen todo mezclado (scooters con batería al 5 %, otros con fallas en los frenos y otros recogidos solo por redistribución).
- Las reparaciones y cargas de batería se registran en un **cuaderno del taller** que al final del día se vuelca en un **Excel**.
- Pasa seguido que un scooter con batería descargada o motor fallando **vuelve a la calle** porque en la app sigue figurando **"Disponible"**.
- No hay comunicación automática entre el taller y la aplicación del usuario.

### A.7.5 Responsable de Experiencia de Usuario y Customer Success
- Los canales de soporte están **desbordados** de reclamos.
- El usuario camina tres cuadras hacia un scooter que vio en la app y encuentra que no tiene batería suficiente para iniciar el viaje, o escanea el QR y el motor no arranca por una falla no reportada.
- El **22 %** de los viajes que se intentan iniciar terminan cancelados por estos problemas.
- La gente se frustra, califica mal la app y no vuelve a usar el servicio; la calificación cayó de **4,6 a 3,8**.
- No pueden dar respuestas resolutivas porque el sistema de atención **no está integrado con la telemetría** del vehículo en tiempo real.

<a id="a8"></a>
## A.8 Resumen de datos cuantitativos del caso

| Dato | Valor |
|---|---|
| Colaboradores directos | 48 |
| Población de la ciudad | Más de 1 millón de habitantes |
| Antigüedad | 3 años |
| Depósitos operativos | 3 |
| Flota | 1.200 scooters eléctricos + 350 bicicletas eléctricas |
| Crecimiento de usuarios activos (último año) | 60 % |
| Usuarios registrados | Más de 38.000 |
| Viajes diarios promedio | Unos 9.500 |
| Frecuencia de reportes de ocupación territorial | Cada 4 horas |
| Disponibilidad en zonas críticas en hora pico | Menor al 60 % → meta 85 % mínimo (8 meses) |
| Viajes iniciados no concretados | 22 % → meta inferior al 2 % (6 meses) |
| Incremento de reclamos de usuarios | 35 % |
| Peso de la logística en los costos operativos | 35 % → meta inferior al 20 % (12 meses) |
| Calificación de la app | 4,6 → 3,8 actual → meta más de 4,5 (8 meses) |
| Retención mensual | 82 % → 67 % actual → meta 80 % (8 meses) |
| Huella de carbono logística | Meta −25 % en t CO2e por viaje (8 meses) |
| Reclamos vecinales por obstrucción | Meta −50 % (8 meses) |
| Vencimiento de la licencia municipal | 8 meses |
| Disponibilidad mínima exigida por el municipio | 85 % en zonas críticas |
| Año de la visión | 2028 |
| Ejemplos de las entrevistas | Batería al 5 %; zona universitaria sin unidades a las 10:00; usuario que camina 3 cuadras |


---

# PARTE B — TABLERO MIRO (desarrollo del equipo)

<a id="b0"></a>
## B.0 Material recibido

- Texto pegado de las grillas del Miro: "1 Organización", "Objetivos de procesos", "3 Motivaciones de la organización", "1 Proceso — Definición del proceso elegido para la mejora" (con SIPOC, marco regulatorio y valor creado), "2 Grupos de interés del proceso", "3 Análisis FODA del proceso", "1 CAME — Perfil de la mejora del proceso" y "2 Propuesta de mejora y alineación estratégica".
- Dos imágenes: "Mapa de Procesos" y el diagrama BPMN del proceso.
- La propuesta menciona propuestas de valor complementarias (DO y FA) "en las filas siguientes"; esas filas **no estaban** en el material pegado.
- Todo lo de esta parte es análisis o propuesta del equipo; las propuestas **no están implementadas**.

<a id="b1"></a>
## B.1 Organización (grilla "1 Organización")

| Campo | Contenido del Miro |
|---|---|
| Nombre de la organización | E-MOVE |
| Rubro / actividad | Servicios de movilidad urbana sustentable. Provee un sistema compartido de scooters y bicicletas eléctricas mediante una plataforma digital interactiva. |
| Ámbito o alcance de negocio | Local/urbano: el producto solo puede usarse en una ciudad argentina en particular. |
| Tipo de organización | Con fines de lucro. |
| Modelo de negocio | Servicio de movilidad urbana compartida mediante scooters y bicicletas eléctricas gestionadas por una app, con distintos tipos de clientes: usuarios individuales, empresas con convenios corporativos y el municipio. |
| Misión | Brindar soluciones de movilidad urbana compartida, accesibles y ambientalmente responsables, integrando tecnología, gestión operativa y servicio al usuario para reducir la dependencia del transporte individual motorizado. |
| Visión | Consolidarse como la plataforma local de micromovilidad sustentable más confiable y escalable para el año 2028, siendo reconocida por el entorno por su disponibilidad, seguridad, eficiencia operativa y contribución verificable a la reducción de la huella de carbono urbana. |

### B.1.1 Estructura interna (48 colaboradores directos)

| ID | Área | Personas | Responsabilidades |
|---|---|---|---|
| AREA-01 | Dirección General | 3 | Define las prioridades de crecimiento, las metas y la asignación de recursos. |
| AREA-02 | Operaciones, logística y mantenimiento | 22 | Área más numerosa por el peso operativo del negocio. Maneja la redistribución de la flota, la recarga de unidades, su mantenimiento y la resolución de incidentes en los depósitos (unidades con fallas mecánicas no reportadas, vandalizadas o discrepancia entre inventario físico y digital). |
| AREA-03 | Tecnología e IT | 7 | Desarrollo y mantenimiento de la app móvil, geolocalización, experiencia de usuario (UX), centro de monitoreo digital y ciberseguridad. |
| AREA-04 | Comercial y Alianzas | 5 | Captar y fidelizar usuarios, gestionar los convenios corporativos y mantener la relación con el municipio. |
| AREA-05 | Administración y Finanzas | 6 | Gestionar la documentación, los registros y los circuitos administrativos, junto con la administración de los recursos financieros (ingresos, cobranzas, pagos, flujo de fondos, presupuestos y control financiero), asegurando integridad y trazabilidad de la información, disponibilidad de fondos y sostenibilidad económica. |
| AREA-06 | Compras o Abastecimiento | 3 | Adquisición de bienes o servicios, como repuestos, vehículos e insumos. |
| AREA-07 | Recursos Humanos | 2 | Selección, capacitación y coordinación de los perfiles operativos, tecnológicos, comerciales y de soporte necesarios para la continuidad y mejora del servicio. |

### B.1.2 Objetivos estratégicos (redacción del Miro)

| ID | Objetivo |
|---|---|
| OBJ-01 | Garantizar, en un plazo de 8 meses, una disponibilidad mínima del 85 % de la flota en zonas críticas en horarios pico. |
| OBJ-02 | Reducir en 12 meses los costos logísticos de distribución del 35 % a menos del 20 % del gasto operativo total. |
| OBJ-03 | Elevar en un plazo de 8 meses la calificación de la app de 3,8 a más de 4,5 (sobre 5) y la retención mensual del 67 % al 80 %. |
| OBJ-04 | Reducir los viajes iniciados no concretados del 22 % a menos del 2 %, en 6 meses. |
| OBJ-05 | Asegurar la renovación de la licencia municipal antes de su vencimiento (8 meses), demostrando una reducción del 25 % en la huella de carbono de la logística de distribución (medida en toneladas de CO2 por viaje) y disminuyendo un 50 % los reclamos vecinales por obstrucción de la vía pública. |

### B.1.3 Clientes de la organización

| ID | Cliente | Descripción |
|---|---|---|
| CLI-01 | Usuarios individuales registrados | Habitantes urbanos que necesitan traslados cortos. Más de 38.000 usuarios, promediando 9.500 viajes diarios. |
| CLI-02 | Clientes corporativos | Empresas con convenios que promueven la movilidad sustentable entre sus empleados. |
| CLI-03 | Municipio | Establece acuerdos institucionales con E-MOVE y facilita convenios con empresas interesadas en promover el uso de monopatines y bicicletas eléctricas entre sus empleados, fomentando una movilidad urbana más sustentable. |

### B.1.4 Producto / servicio

Servicio de movilidad urbana bajo demanda: acceso a una flota de **1.200 scooters eléctricos y 350 bicicletas eléctricas** mediante plataforma digital, con localización, desbloqueo por QR, monitoreo por telemetría IoT, cierre de viajes con zonas de estacionamiento permitidas y cobro.

<a id="b2"></a>
## B.2 Objetivos de procesos (tabla del Miro)

Los objetivos coinciden textualmente con los del caso (A.4); cambian los nombres de los procesos.

| ID | Proceso (nombre del Miro) | Objetivo |
|---|---|---|
| PROC-01 | Direccionar estrategia y expansión | Definir las prioridades de crecimiento, metas de volumen, ciudades objetivo y criterios de asignación de recursos para sostener la propuesta de valor sin comprometer la calidad ni la sustentabilidad. |
| PROC-02 | Gestionar alianzas y sostenibilidad | Gestionar la relación con el municipio, empresas y aliados comerciales para asegurar la licencia de operación, zonas habilitadas, compromisos institucionales e indicadores verificables de reducción de huella de carbono. |
| PROC-03 | Innovar en tecnología | Evaluar, priorizar e incorporar soluciones digitales, analítica de demanda y modelos predictivos para mejorar la disponibilidad, seguridad y eficiencia de la flota. |
| PROC-04 | Gestionar la sostenibilidad | Definir políticas, objetivos e indicadores de sostenibilidad ambiental para orientar la operación y el crecimiento de E-MOVE, asegurando la medición y reducción de la huella de carbono y el cumplimiento de los compromisos ambientales asumidos ante el municipio y demás grupos de interés. |
| PROC-05 | Gestionar la comercialización | Convertir el mercado potencial en demanda efectiva y recurrente del servicio de E-MOVE, captando, incorporando, activando, reteniendo y fidelizando usuarios individuales y clientes corporativos mediante campañas, promociones, convenios y acciones comerciales, con el propósito de generar una base de usuarios habilitados y sostener el crecimiento rentable del servicio. |
| PROC-06 | Gestionar el servicio de movilidad urbana | Transformar la necesidad de traslado de un usuario habilitado en un viaje disponible, seguro, monitoreado, correctamente finalizado y cobrado, asegurando la disponibilidad territorial y técnica de la flota, su redistribución, recarga y mantenimiento, así como la resolución de incidentes asociados al servicio, con el propósito de brindar una experiencia confiable, eficiente y sustentable. |
| PROC-07 | Gestionar la documentación | Gestionar la documentación, los registros y los circuitos administrativos de la organización, asegurando la integridad, disponibilidad y trazabilidad de la información necesaria para respaldar las operaciones y el cumplimiento de las obligaciones de E-MOVE. |
| PROC-08 | Gestionar los recursos financieros | Administrar los recursos financieros de la organización mediante la gestión de ingresos, cobranzas, pagos, flujo de fondos, presupuestos y control financiero, con el propósito de asegurar la disponibilidad de fondos y contribuir a la sostenibilidad económica de E-MOVE. |
| PROC-09 | Gestionar las compras y el abastecimiento | Gestionar la adquisición y provisión oportuna de bienes y servicios requeridos por la organización, desde la identificación de la necesidad y la selección de proveedores hasta la recepción y disponibilidad de los recursos, asegurando condiciones adecuadas de costo, calidad y plazo. |
| PROC-10 | Gestionar la infraestructura IT y la ciberseguridad | Mantener la disponibilidad, seguridad y conectividad de la aplicación móvil, pasarelas de pago, geolocalización, bases de datos y tableros de monitoreo. |
| PROC-11 | Gestionar el talento humano | Seleccionar, capacitar y coordinar los perfiles operativos, tecnológicos, comerciales y de soporte necesarios para la continuidad y mejora del servicio. |

<a id="b3"></a>
## B.3 Mapa de procesos (imagen del Miro)

| Categoría | Procesos |
|---|---|
| Estratégicos | Direccionar estrategia y expansión · Gestionar alianzas y sostenibilidad · Innovar en tecnología · Gestionar la sostenibilidad |
| Esenciales | Gestionar la comercialización → Gestionar el servicio de movilidad urbana (dibujados como flechas encadenadas) |
| De soporte | Gestionar la administración · Gestionar los recursos financieros · Gestionar las compras y el abastecimiento · Gestionar la infraestructura IT y la ciberseguridad · Gestionar el talento humano |

En el mapa, PROC-07 se llama "Gestionar la administración" (en la tabla de objetivos, "Gestionar la documentación").

<a id="b4"></a>
## B.4 Motivaciones de la organización — impulsores y demandas de mejora

### B.4.1 Tendencias globales, de la industria y del mercado

| ID | Tendencia | Contenido del Miro |
|---|---|---|
| TEND-01 | Movilidad Consciente (transporte privado sostenible) | Fue la razón de ser con la que arrancó la empresa hace tres años: moverse por la ciudad sin contaminar tanto y competir contra la congestión vehicular. Es donde más flaquean hoy: redistribuyen scooters con camionetas a combustión, algo contradictorio con lo que venden, que ya generó críticas en redes sociales. Se agrava porque el municipio les exige demostrar con datos reales (no con Excels estimados a mano) que reducen la huella de carbono; si no, corren riesgo de perder la licencia. |
| TEND-02 | Comercio Ininterrumpido ("Siempre abierto") | Expectativa de servicios disponibles de forma continua, sin restricciones horarias. Para E-MOVE: mantener scooters y bicicletas disponibles en puntos estratégicos (zonas universitarias, bancarias y de oficinas) durante las 24 horas, para que el usuario acceda en cualquier momento sin depender de horarios de atención. |
| TEND-03 | Todo Predictivo (Smart Everything) | Anticipación de eventos mediante análisis de datos en tiempo real, capacidad que caracteriza a las organizaciones tecnológicas líderes. Desventaja significativa de E-MOVE: decide sobre reportes de ocupación territorial actualizados cada cuatro horas y asigna recursos logísticos con estimaciones manuales, sin modelos predictivos. |

### B.4.2 Tendencias o necesidades del cliente

| ID | Tendencia | Contenido del Miro |
|---|---|---|
| TEND-04 | Servicios accesibles | Garantizar que los usuarios accedan al servicio de forma sencilla, rápida y confiable, con disponibilidad de scooters y bicicletas en los puntos de mayor demanda. Contemplar criterios de diseño universal para que personas de distintas edades, capacidades y niveles de experiencia tecnológica puedan usar fácilmente los vehículos y la app. |
| TEND-05 | Automatización e Internet of Things (IoT) | Conexión entre dispositivos físicos y el ecosistema digital del usuario para experiencias personalizadas. Para E-MOVE: vincular las bicicletas con apps de salud (Apple Health, Samsung Health), registrando automáticamente datos del viaje (distancia, calorías, tiempo de actividad) y sincronizándolos con los objetivos de ejercicio del usuario. Fortalece el vínculo con el cliente y posiciona a E-MOVE como parte de un estilo de vida activo y saludable. |

<a id="b5"></a>
## B.5 Definición del proceso elegido para la mejora

| Campo | Contenido del Miro |
|---|---|
| Nombre | Gestionar el servicio de movilidad urbana (PROC-06) |
| Cliente | Usuarios individuales y clientes corporativos registrados que utilicen el servicio de E-MOVE a través de la aplicación para su movilidad dentro de la zona establecida. |
| Objetivo | Transformar la necesidad de traslado de un usuario habilitado en un viaje disponible, seguro, monitoreado, correctamente finalizado y cobrado, asegurando la disponibilidad territorial y técnica de la flota, su redistribución, recarga y mantenimiento, así como la resolución de incidentes asociados al servicio, con el propósito de brindar una experiencia confiable, eficiente y sustentable. |
| Alcance | Abarca la solicitud, localización y desbloqueo del vehículo por parte del usuario habilitado; el uso y monitoreo del viaje mediante telemetría IoT; y la finalización con estacionamiento en zona permitida y cobro. Además, cubre todo el ciclo posterior de recuperación de la flota: retiro del vehículo por parte de logística, traslado al depósito, recarga de batería (scooters), mantenimiento operativo (scooters y bicicletas) y redistribución del equipo hacia una nueva zona habilitada hasta quedar disponible nuevamente para el usuario. |
| Inicio (Desde) | Un usuario habilitado necesita realizar un traslado y solicita mediante la aplicación un monopatín o bicicleta disponible, seleccionando un vehículo dentro de la zona de cobertura. |
| Fin (Hasta) | El vehículo es redistribuido y puesto nuevamente en una zona habilitada, quedando listo para un nuevo ciclo de uso. |
| Valor creado | Transformar la necesidad de traslado urbano de un usuario habilitado en un viaje disponible, seguro, monitoreado y correctamente finalizado, garantizando la disponibilidad territorial y técnica de la flota, con el propósito de brindar una alternativa de movilidad confiable, eficiente y ambientalmente responsable frente al transporte individual motorizado. |

<a id="b6"></a>
## B.6 SIPOC

### B.6.1 Proveedores → Entradas

| ID | Proveedor | ID | Entrada |
|---|---|---|---|
| SUP-01 | Proceso de Gestión de Comercialización | IN-01 | Usuario habilitado y activado en la plataforma. |
| SUP-01 | Proceso de Gestión de Comercialización | IN-02 | Validación de aptitud para clientes corporativos a la hora de comenzar el viaje. |
| SUP-01 | Proceso de Gestión de Comercialización | IN-03 | Determinación de la condición comercial del viaje (cómo se cobra, ya que el convenio define reglas de facturación en cada viaje puntual). |
| SUP-02 | Proceso de gestión de las compras y abastecimiento | IN-04 | Flota de vehículos (1.200 scooters, 350 bicicletas eléctricas). |
| SUP-02 | Proceso de gestión de las compras y abastecimiento | IN-05 | Repuestos para el mantenimiento. |
| SUP-02 | Proceso de gestión de las compras y abastecimiento | IN-06 | Insumos y materiales para los depósitos operativos. |
| SUP-02 | Proceso de gestión de las compras y abastecimiento | IN-07 | Vehículos utilitarios para la redistribución. |
| SUP-03 | Proceso de gestión del talento humano | IN-08 | Personal capacitado para la gestión del servicio. |
| SUP-04 | Proceso de gestión de la infraestructura IT y la ciberseguridad | IN-09 | Aplicación móvil para la gestión del servicio. |
| SUP-04 | Proceso de gestión de la infraestructura IT y la ciberseguridad | IN-10 | Pasarela de pagos para realizar los cobros. |
| SUP-04 | Proceso de gestión de la infraestructura IT y la ciberseguridad | IN-11 | Telemetría IoT. |
| SUP-05 | Municipio / Gobierno local | IN-12 | Zonas habilitadas para estacionamiento. |
| SUP-05 | Municipio / Gobierno local | IN-13 | Normativa de circulación vigente (reglas de tránsito aplicables a los vehículos). |
| SUP-05 | Municipio / Gobierno local | IN-14 | Autorización / licencia para operar como empresa de micromovilidad. |
| SUP-06 | Agencia Nacional de Seguridad Vial (ANSV) | IN-15 | Normativa técnico-operativa de seguridad y circulación a nivel nacional — Ley Nacional de Tránsito N° 24.449 (velocidad máxima permitida, requisitos de seguridad del vehículo, restricciones de circulación, validaciones de edad para usuarios). |
| SUP-07 | AFIP | IN-16 | Autorización fiscal del comprobante. Obligatoria para poder emitir facturas; se consume en el proceso específicamente en el cierre del viaje y el cobro. |

### B.6.2 Salidas → Clientes

| ID | Cliente | ID | Salida |
|---|---|---|---|
| CLP-01 | Proceso Gestionar alianzas y sostenibilidad; Proceso Gestionar la sostenibilidad | OUT-01 | Registros operativos del servicio: datos de viajes realizados (kilómetros recorridos y tipo de vehículo) y registro de incidentes detectados (unidades abandonadas, viajes no concretados). |
| CLP-02 | Usuario individual registrado | OUT-02 | Recibe el viaje seguro, terminado, monitoreado y cobrado. |
| CLP-03 | Empleado de cliente corporativo | OUT-03 | Uso del servicio para los empleados bajo las condiciones pactadas en el convenio. |
| CLP-04 | Gestión financiera | OUT-04 | Cobros realizados por cada viaje finalizado. |
| CLP-05 | Dirección estratégica y expansión | OUT-05 | Información operativa registrada durante la prestación del servicio (viajes iniciados, viajes no concretados, disponibilidad de unidades por zona, reclamos generados durante el viaje). |
| CLP-06 | Gestión de comercialización | OUT-06 | Registros de calificaciones y comentarios por viaje, que luego el área comercial procesa para obtener indicadores de satisfacción y calificación para las campañas de fidelización. |

<a id="b7"></a>
## B.7 Marco regulatorio y reglas internas

### B.7.1 Marco regulatorio externo (según el Miro)

| ID | Nivel | Norma / obligación | Contenido |
|---|---|---|---|
| RX-01 | Nacional | Ley N° 24.449 (Ley Nacional de Tránsito) | Regula la velocidad máxima, las categorías de vehículos y las normas generales de circulación aplicables en todo el país. |
| RX-02 | Nacional | Ley N° 25.326 (Protección de Datos Personales) | Regula el tratamiento de los datos personales y la geolocalización de los usuarios. |
| RX-03 | Nacional | Autorización fiscal del comprobante (AFIP) | Obligatoria para emitir facturas (ver IN-16). |
| RM-07 | Municipal (Córdoba) | Ordenanza N° 13.549 | Regula específicamente las aplicaciones de transporte (Uber, DiDi, Cabify, etc.), exigiendo su registro e inscripción para brindar servicios autorizados por el municipio. |
| RM-01 | Municipal | Licencia municipal de operación y ordenanzas de movilidad urbana | Habilitan a la empresa a operar en el espacio público; definen las zonas habilitadas de estacionamiento (RM-05), exigen una disponibilidad mínima de flota (85 % en zonas críticas, RM-02) y establecen objetivos de reducción de huella de carbono (RM-09). |
| RM-08 | Municipal | Tasas operativas | Pago de tasas operativas correspondientes (mencionado en el stakeholder Municipio). |

### B.7.2 Reglas internas (términos y condiciones)

Texto del Miro: "los términos y condiciones aseguran las siguientes reglas que garantizan que el sistema opere de manera segura, controlada y consistente, contemplando todos los escenarios posibles para el servicio".

| ID | Regla |
|---|---|
| RN-01 | Si un vehículo tiene menos del 20 % de batería, no puede ofrecerse en alquiler y debe enviarse a recarga. |
| RN-02 | Si un cliente corporativo supera el cupo de viajes mensuales pactado en su convenio, los viajes excedentes se facturan a tarifa individual. |
| RN-03 | Si el usuario no estaciona el vehículo en una zona permitida, el viaje continúa facturándose hasta que lo haga. |
| RN-04 | Si un usuario no reporta un daño visible antes de comenzar el viaje, la responsabilidad de un posible daño detectado al finalizar recae sobre él. |
| RN-05 | Si se confirma un daño en el vehículo, el costo de reparación se cobra al usuario responsable según una tabla de costos predefinida por tipo de daño. |
| RN-06 | Si la disponibilidad de vehículos en una zona cae por debajo del 85 %, se prioriza la redistribución de flota hacia esa zona. |
| RN-07 | Si un usuario presenta un reclamo sobre un viaje, el cobro de ese viaje queda pendiente de revisión hasta resolver el reclamo. |
| RN-08 | Los viajes de clientes corporativos no se facturan individualmente, sino de forma consolidada al cierre de cada período mensual. |

Nota del propio Miro (sección de propuesta, B.11): el bloqueo bajo 20 % de batería, la facturación continua fuera de zona permitida y la priorización automática bajo 85 % se describen allí como "condiciones hoy inexistentes" que la mejora formaliza.


<a id="b8"></a>
## B.8 Grupos de interés del proceso (stakeholders)

Consigna usada en el Miro: identificar grupos, personas, equipos u organizaciones que pueden verse afectados por el desempeño del proceso o tienen poder de influir en él, con **análisis bidireccional** (cómo afecta el stakeholder a la ejecución de este proceso y cómo el proceso afecta al stakeholder). Columnas:
- **Resultados (¿qué reciben?):** qué espera el stakeholder exclusivamente de la salida o servicio del proceso; lo tangible.
- **Expectativas (¿qué esperan?):** qué espera respecto del proceso, producto o servicio que no sea una característica; qué lo satisface o no; lo intangible.
- **Obstáculos (¿qué podría fallar?):** qué impide o dificulta alcanzar sus intereses dentro del proceso. Si el proceso ya tiene el problema, es un **obstáculo**; si es potencial, es un **riesgo**.

| ID | Stakeholder | Resultados (tangible) | Expectativas (intangible) | Obstáculos | Riesgos |
|---|---|---|---|---|---|
| STK-01 | Usuarios (individuales y corporativos) | Traslado efectivo de un punto a otro. Unidades operativas y con carga disponibles en la vía pública. | Experiencia de viaje segura, rápida y sin fricciones. Servicio confiable y una app móvil intuitiva y resolutiva. | Unidades sin batería o fallas no reportadas en la app. | Alta tasa de viajes cancelados (22 %), frustración del usuario, caída en la calificación de la app y abandono del servicio. |
| STK-02 | Municipio / Autoridad de Tránsito | Reportes de huella de carbono carentes de precisión, elaborados manualmente mediante estimaciones en planillas de cálculo. Pago de tasas operativas correspondientes. | Evidencia técnica y auditable de sustentabilidad. Cumplimiento normativo del 85 % de disponibilidad en áreas de alta circulación y ordenamiento estricto de la vía pública (cero unidades abandonadas en veredas). | Redistribución logística mediante camionetas utilitarias a diésel (contrasentido ambiental) y carencia de automatización predictiva para evitar la acumulación de flota ociosa. | Suspensión o no renovación de la licencia de operación en el límite crítico de 8 meses, paralizando la continuidad del negocio. |
| STK-03 | Logísticas y Técnicos de Taller | Reportes de ocupación territorial estáticos con 4 horas de latencia operativa. Lotes de vehículos físicos sin diagnóstico técnico previo para su mantenimiento o recarga. Directivas de recolección reactivas y no ruteadas, comunicadas mediante canales informales. | Condiciones laborales organizadas. Procesos eficientes sin "viajes en vacío" ni estrés por falta de coordinación técnica. | Carencia de un sistema de ruteo dinámico e inteligente; la asignación de tareas depende de cálculos manuales ("a ojo") del supervisor de turno. Inexistencia de un módulo de triage (diagnóstico previo) que comunique el estado de la batería o fallas técnicas antes de que la unidad llegue al depósito. | Desgaste y estrés laboral del personal operativo por ineficiencia crónica ("viajes en vacío" por la ciudad). Colapso de la capacidad del taller por embudos en la recepción, provocando que vehículos averiados retornen a la vía pública. |
| STK-04 | Dirección General / Inversores de E-MOVE | Métricas operativas degradadas, con costos logísticos que absorben el 35 % del gasto total y una retención de clientes en caída (67 %). | Crecimiento sostenible y retorno de inversión (ROI). Optimizar la eficiencia financiera (costo logístico a menos del 20 %), defender la posición competitiva frente al nuevo actor internacional y garantizar la renovación de la licencia municipal. | Ineficiencias sistémicas y operativas (procesos manuales, sistemas aislados) que devoran el presupuesto y destruyen la propuesta de valor. | Pérdida definitiva de la concesión municipal en 8 meses, fuga masiva de usuarios hacia la competencia con IA e inviabilidad financiera del modelo de negocio a escala. |
| STK-05 | Vecinos / Comunidad local | Veredas transitables y espacios públicos ordenados. | Convivencia armónica urbana. Disminución real de la congestión vehicular y de la contaminación ambiental. | Veredas obstruidas por scooters abandonados y contaminación por camionetas diésel. | Aumento de quejas públicas en redes sociales, dañando irreparablemente la imagen de marca ("falsa propuesta verde"). |
| STK-06 | Área comercial y alianzas | Usuarios fidelizados que completan sus viajes satisfactoriamente. Métricas de uso activo y cuentas corporativas operativas. | Un servicio altamente confiable (85 % de disponibilidad) que respalde la promesa de venta, permitiendo aumentar la retención mensual y retener los convenios con empresas. | Fallas operativas en la calle (unidades sin batería). | Pérdida de la base de usuarios captados (caída de retención del 82 % al 67 %) e incapacidad para cerrar nuevos acuerdos corporativos por mala reputación. |
| STK-07 | Área de administración y finanzas | Registros transaccionales de viajes finalizados para la facturación. Reportes de costos logísticos y estado de activos (flota). | Trazabilidad total de los ingresos por viaje y una operación eficiente que mantenga los costos logísticos por debajo del 20 % del gasto total. | Sistemas aislados que dificultan la conciliación de datos y rutas manuales que disparan el gasto de combustible. | Desbordes presupuestarios (la logística absorbe hoy el 35 %) que amenazan la rentabilidad de la startup. |

<a id="b9"></a>
## B.9 Análisis FODA del proceso (grilla "3 Análisis FODA")

Proceso analizado: gestión integral del servicio de movilidad urbana, desde que el usuario habilitado solicita, localiza y desbloquea el vehículo, hasta que la unidad es redistribuida y queda nuevamente disponible en una zona habilitada.

Numeración de la grilla: F1–F5, O1–O4, D1–D5, A1–A5. (La matriz CAME de B.10 usa otra lista, más amplia.)

### B.9.1 Fortalezas (factores internos positivos — puntos fuertes del proceso)

**Relacionadas al propósito, visión y estrategia**

| ID | Fortaleza |
|---|---|
| F1 | Infraestructura tecnológica de base ya integrada (app, geolocalización, telemetría IoT, pasarela de pagos) que sostiene la promesa de un servicio accesible y ambientalmente responsable de la misión institucional. |
| F2 | Escala operativa consolidada (1.200 scooters + 350 bicicletas, 3 depósitos distribuidos) que sostiene el plan de expansión hacia la visión 2028. |
| F3 | El proceso ya recolecta datos de telemetría IoT en tiempo real, insumo clave para la innovación aplicada que declara la cultura organizacional. |
| F4 | Vínculo institucional vigente con el municipio (acuerdos y licencia actual) y un área de Alianzas y Gestión Regulatoria que conoce las condiciones de renovación. |
| F5 | Base de usuarios grande y en crecimiento: 38.000 registrados, 9.500 viajes diarios y un crecimiento del 60 % anual. |

**Relacionadas a grupos de interés**
- Usuarios: pueden localizar, desbloquear, usar y pagar el viaje de forma autónoma, sin intervención humana en el frente.
- Dirección/Inversionistas: el crecimiento del 60 % en usuarios activos valida el modelo de negocio como escalable.
- Municipio: la existencia de una flota eléctrica de gran escala aporta, en potencia, a reducir la congestión y la contaminación urbana.

**Resultados actuales (fortalezas)**
- 9.500 viajes diarios efectivamente completados a través de la plataforma digital.
- Base de más de 38.000 usuarios registrados, con crecimiento sostenido interanual del 60 %.
- Cobertura logística distribuida en 3 depósitos operativos dentro de una urbe de más de un millón de habitantes.

### B.9.2 Oportunidades (factores externos positivos)

**Relacionadas al propósito, visión y estrategia**

| ID | Oportunidad |
|---|---|
| O1 | Tendencia de mercado hacia modelos predictivos e IA para gestión de flotas (el propio competidor ya la aplica), que acercaría a E-MOVE a su visión de ser la plataforma más confiable para 2028. |
| O2 | Auge de tendencias de consumo compartido y conciencia ambiental (post-capitalismo, movilidad consciente) que amplía el mercado potencial del servicio. |
| O3 | Posibilidad de profesionalizar la trazabilidad ambiental exigida por el municipio, convirtiendo una exigencia regulatoria en ventaja diferencial. |
| O4 | Municipio, universidades y empresas quieren ordenar el espacio público, lo que abre la puerta a definir centros de estacionamiento y recarga en zonas críticas. |

**Relacionadas a grupos de interés**
- Proveedores tecnológicos (IoT/IA): posibilidad de alianzas para incorporar analítica predictiva de demanda.
- Empresas con convenios corporativos: oportunidad de sumar más compañías que promuevan la movilidad sustentable entre sus empleados.
- Municipio: puede transformarse en aliado estratégico si E-MOVE demuestra cumplimiento auditable en lugar de resistencia.

**Resultados actuales (oportunidades)**
- Los datos de telemetría ya se generan en tiempo real; hoy están subutilizados pero disponibles como base para un modelo predictivo.
- Tendencia de crecimiento de usuarios (60 % anual) que indica demanda de mercado disponible para capturar.
- Exigencia municipal ya explicitada (85 % de disponibilidad, reducción de huella) que da un objetivo concreto y medible.

### B.9.3 Debilidades (factores internos negativos)

**Relacionadas al propósito, visión y estrategia**

| ID | Debilidad |
|---|---|
| D1 | El proceso no está alineado con la visión de contribución verificable a la reducción de huella de carbono: la recuperación de flota se hace con camionetas a combustión y reportes estimados a mano. |
| D2 | Falta de integración tecnológica entre las etapas de uso y recuperación (monitoreo, mantenimiento y reclamos en plataformas aisladas), contradiciendo el eje de innovación aplicada. |
| D3 | La redistribución reactiva (basada en reportes cada 4 horas y decisiones tomadas solamente con evidencia empírica) no sostiene el objetivo estratégico de disponibilidad mínima del 85 % en zonas críticas. |
| D4 | La falta de comunicación automática entre depósito y app (una unidad puede seguir figurando disponible con la batería descargada) compromete la seguridad operativa que declara la cultura institucional. |
| D5 | La huella de carbono se reporta al municipio en planillas Excel hechas en el momento, sin datos auditables, lo que contradice el valor de "sustentabilidad con evidencia". |

**Relacionadas a grupos de interés**
- Vecinos: perciben el contrasentido ambiental (camionetas contaminantes moviendo scooters verdes) y aumentan sus denuncias.
- Usuarios: sufren viajes cancelados por falta de unidad o batería insuficiente; reciben respuestas automatizadas poco resolutivas.
- Choferes de cuadrilla: recorren kilómetros en vacío sin información precisa y reciben críticas públicas en redes por el uso de camionetas a combustión.
- Técnicos de depósito: reciben las unidades mezcladas sin criterio de prioridad, generando caos en el flujo de mantenimiento.

**Resultados actuales (debilidades)**
- Incremento del 35 % en los reclamos de usuarios y de vecinos por unidades mal ubicadas o estacionadas.
- 22 % de los viajes iniciados no se concretan por falta de vehículo o batería insuficiente.
- Disponibilidad de flota en zonas críticas por debajo del 60 % en horarios pico (vs. el 85 % exigido).
- Costos logísticos que absorben el 35 % del gasto operativo total (vs. la meta interna de menos del 20 %).

### B.9.4 Amenazas (factores externos negativos)

**Relacionadas al propósito, visión y estrategia**

| ID | Amenaza |
|---|---|
| A1 | Competidor internacional que ya ofrece disponibilidad predictiva con IA al municipio, amenazando directamente la aspiración de E-MOVE de ser la plataforma líder hacia 2028. |
| A2 | Vencimiento de la licencia municipal de operación en 8 meses, condicionada a exigencias (85 % de disponibilidad, reducción de huella, menos denuncias) que el proceso actual no cumple. |
| A3 | Presión regulatoria creciente sobre sostenibilidad y uso del espacio público, que exige capacidades de reporte que el proceso hoy resuelve de forma manual y poco confiable. |
| A4 | Denuncias por unidades que obstruyen veredas. |
| A5 | Cambiar de servicio no cuesta nada con un competidor en la ciudad; un viaje que no se completa puede terminar en un cliente perdido. |

**Relacionadas a grupos de interés**
- Usuarios: pueden migrar al competidor si la experiencia de disponibilidad y confiabilidad no mejora.
- Municipio: puede no renovar la licencia si no se demuestra cumplimiento verificable, afectando la continuidad misma del negocio.
- Vecinos/comunidad: pueden intensificar la presión pública en redes sociales, dañando la reputación de marca.

**Resultados actuales (amenazas)**
- Caída medible de la calificación de la app (de 4,6 a 3,8) y de la retención mensual (de 82 % a 67 %).
- Riesgo explícito y declarado internamente (Directora de Alianzas) de perder la concesión si no se profesionaliza la trazabilidad.
- Cuestionamientos activos en redes sociales por el uso de vehículos a combustión para redistribuir scooters eléctricos.

<a id="b10"></a>
## B.10 CAME — Perfil de la mejora del proceso

### B.10.1 Factores listados en la matriz CAME

Numeración propia de la matriz (es la que usan los cruces de las estrategias).

| Fortalezas | Oportunidades |
|---|---|
| F1. Infraestructura tecnológica base ya integrada (app, pasarela de pagos). | O1. Tendencia hacia modelos predictivos e IA en gestión de flotas. |
| F2. Escala operativa masiva (1.550 unidades y 3 depósitos). | O2. Auge del consumo compartido y conciencia ambiental. |
| F3. Generación de datos de telemetría IoT en tiempo real. | O3. Posibilidad de profesionalizar la trazabilidad ambiental para el municipio. |
| F4. Vínculo institucional vigente con el municipio (conocer las condiciones de renovación). | O4. Municipio, universidades y empresas quieren ordenar el espacio público, lo que abre puertas a definir hubs en zonas críticas. |
| F5. Base de usuarios grande y en crecimiento. | O5. Alianzas con proveedores tecnológicos (IoT/IA) para incorporar analítica predictiva sin desarrollarla desde cero. |
| F6. El usuario hace todo el servicio solo: localiza, desbloquea, usa y paga sin intervención humana. | O6. Empresas que promueven la movilidad sustentable: posibilidad de sumar más convenios corporativos. |
| F7. Flota eléctrica de gran escala que ayuda a reducir la congestión y la contaminación de la ciudad. | |

| Debilidades | Amenazas |
|---|---|
| D1. Logística con camionetas a combustión (contrasentido ambiental). | A1. Nuevo competidor internacional con disponibilidad predictiva (IA). |
| D2. Falta de integración entre sistemas (taller, monitoreo y app). | A2. Vencimiento de licencia municipal en 8 meses (exige 85 % de disponibilidad). |
| D3. Redistribución reactiva, manual y a ciegas. | A3. Presión en redes sociales por el uso ineficiente del espacio público y vehículos a combustión. |
| D4. Unidades descargadas o rotas figuran "disponibles". | A4. Denuncias por obstrucción de veredas. Hay que bajarlas un 50 %. |
| D5. Huella de carbono se reporta mediante Excel sin datos auditables. | A5. Para el usuario cambiar de servicio no es un problema. Un viaje fallido es un cliente perdido. |
| | A6. Atención al usuario poco resolutiva: respuestas automáticas ante viajes cancelados. |
| | A7. Las unidades entran al depósito mezcladas, sin criterio de prioridad, y el mantenimiento se vuelve un caos. |

### B.10.2 Estrategias

| ID | Cuadrante (rótulo del Miro) | Cruce | Estrategia |
|---|---|---|---|
| FO-1 | Ofensiva (E — Explotar) | F1, F3 – O1 | Desarrollar un motor de analítica predictiva mediante IA que utilice los datos de telemetría IoT actuales de la plataforma para anticipar la demanda y optimizar la rentabilidad del servicio. |
| FO-2 | Ofensiva (E — Explotar) | F3, F4 – O3 | "Utilizando la telemetría disponible el CO₂ que evita los viajes de cada usuario y ofrecerlo al municipio como indicador ambiental oficial y verificable" (texto tal como figura; falta el verbo). |
| FA-1 | Defensiva (M — Mantener), "Contrarrestar" | A1, A2 – F2 | Desplegar un plan de saturación logística preventiva en zonas críticas utilizando la capacidad máxima de la flota (1.550 unidades) para asegurar el 85 % de disponibilidad, retener la licencia y bloquear el avance del nuevo competidor. |
| FA-2 | Defensiva (M — Mantener) | F5, F1 – A3, A5 | Lanzar una campaña de transparencia en la app y redes: publicar avances con sustento (CO₂ evitado, km recorridos) y lanzar un programa de referidos para los usuarios. |
| DO-1 | Reorientación (C — Corregir) | D1, D3 – O3 | Reemplazar progresivamente las camionetas a combustión por vehículos eléctricos e implementar un software de ruteo dinámico para eliminar la redistribución a ciegas, logrando la trazabilidad ambiental profesional que exige el municipio. |
| DO-2 | Reorientación (C — Corregir) | D1, D3 – O4 | Convertir los centros en puntos fijos de recarga y redistribución, con cargadores. Las cuadrillas hacen recorridos planificados entre centros en lugar de buscar unidad por unidad, y bajan los km hechos con camionetas. |
| DA-1 | Supervivencia (A — Afrontar) | D2, D4 – A1 | Integrar de forma urgente los sistemas de taller con la aplicación móvil para bloquear automáticamente las unidades averiadas o sin batería, erradicando los viajes fallidos para frenar la fuga de usuarios hacia el competidor. |
| DA-2 | Supervivencia (A — Afrontar) | D3, D1 – A4, A2 | Hacer operativos periódicos para retirar unidades abandonadas en las zonas más denunciadas por los vecinos. Incluir un canal oficial para que los vecinos reporten mediante un QR en cada unidad. |

<a id="b11"></a>
## B.11 Propuesta de mejora y alineación estratégica (SIOFS)

Pregunta guía de la grilla: "¿Qué queremos hacer y a quién beneficia?"

### B.11.1 Estrategia CAME de origen

"Estrategia CAME de tipo DA (Corregir / Afrontar): corregir la gestión logística reactiva y la fragmentación de la información operativa (reportes cada 4 horas, decisiones manuales y sistemas aislados) para afrontar la presión regulatoria, la renovación de la licencia municipal y la entrada de un competidor internacional."

### B.11.2 Propuesta de valor: implementar un Sistema Integrado de Orquestación Inteligente de Flota y Servicio (SIOFS)

Tipo de mejora: Automatizar / Digitalizar / Integrar / Simplificar.

Funciones (los IDs SIOFS-Mxx son etiquetas de ubicación):

| ID | Función |
|---|---|
| SIOFS-M01 | Integrar en una única plataforma la telemetría IoT, ubicación, nivel de batería, estado de mantenimiento/recarga y reclamos de usuarios. |
| SIOFS-M02 | Incorporar analítica predictiva de demanda por zona y franja horaria, considerando variables como clima y agenda urbana, para anticipar faltantes de unidades. |
| SIOFS-M03 / M04 | Generar automáticamente prioridades de redistribución y rutas optimizadas para las cuadrillas, reemplazando decisiones "a ojo", llamadas, radio/WhatsApp y recorridos innecesarios. |
| SIOFS-M05 | Sincronizar taller/recarga con la app: una unidad con batería insuficiente o falla debe pasar automáticamente a estado "no disponible" hasta quedar apta. |
| SIOFS-M07 | Incorporar geofencing y validación del estacionamiento al cierre del viaje para reducir unidades abandonadas u obstrucciones. |
| SIOFS-M10 | Automatizar tableros con disponibilidad, viajes no concretados, kilómetros logísticos, costos y huella de carbono auditable. |

"El cambio principal es pasar de una operación reactiva, manual y fragmentada a una gestión integrada, preventiva y basada en datos en tiempo real."

**Rediseño de actividades y reglas**
- Se rediseña parte de las actividades del proceso: se elimina la evaluación manual de reportes cada 4 horas y el registro de reparaciones en cuaderno/Excel.
- Reglas de negocio: se formalizan condiciones "hoy inexistentes", como el bloqueo de unidades con batería menor al 20 %, la facturación continua si no se estaciona en zona permitida y la priorización automática de redistribución cuando la disponibilidad de una zona cae por debajo del 85 %.

**Intercambio con el municipio (SIOFS-M11 / M12)**
- El SIOFS genera y envía automáticamente, mediante un canal de datos acordado con el municipio, los indicadores que éste exige para la renovación de la licencia:
  - disponibilidad real por zona crítica (universidades, áreas bancarias y de oficinas);
  - huella de carbono por viaje calculada sobre kilómetros logísticos reales;
  - estado de unidades en vía pública para acreditar la reducción de obstrucciones.

**Experiencia del usuario (SIOFS-M05, M02, M09)**
- Al bloquear automáticamente las unidades no aptas y anticipar los faltantes por zona, se ataca la causa raíz del 22 % de viajes no concretados, "que es el principal motivo de las malas calificaciones".
- Acciones directas sobre la experiencia: integrar el sistema de atención con la telemetría en tiempo real para que el soporte resuelva los reclamos con evidencia del estado real del vehículo, en lugar de respuestas automatizadas.

**Clasificación automática del ingreso al depósito (SIOFS-M06)**
- El sistema etiqueta cada unidad retirada según su necesidad real (recarga, reparación o solo redistribución), ordenando el flujo del taller que hoy recibe "todo mezclado" y priorizando las de retorno más rápido a la calle.

### B.11.3 Procesos involucrados

**Directos** (ejecutan actividades nuevas o rediseñadas para que la mejora funcione):

| Proceso | Rol en la mejora |
|---|---|
| Gestión del servicio de movilidad urbana (PROC-06) | Es el proceso rediseñado. Cambian sus actividades (desaparecen la evaluación manual de reportes cada 4 horas y el registro de reparaciones en cuaderno/Excel; se incorporan la validación de aptitud de la unidad y la clasificación al ingreso al depósito), sus participantes (el supervisor de monitoreo deja de asignar rutas a ojo y pasa a gestionar excepciones sobre un tablero predictivo; las cuadrillas reciben rutas optimizadas en lugar de instrucciones por radio o WhatsApp) y sus reglas de negocio (bloqueo bajo el 20 % de batería, validación de zona al cierre, priorización automática bajo el 85 %). |
| Innovación y tecnología (PROC-03) | Responsable de incorporar la analítica predictiva. Hoy esa función está definida pero no ejecutada; con la mejora debe seleccionar el modelo, definir las variables de demanda (hora, clima, agenda urbana) y validar periódicamente su precisión. |
| Gestión de infraestructura IT y ciberseguridad (PROC-10) | Debe construir y sostener la integración entre las plataformas hoy aisladas de monitoreo, taller y reclamos, además del canal de datos con el municipio y la protección de los datos de geolocalización exigida por la Ley 25.326. |
| Gestión de sostenibilidad (PROC-04) | Deja de estimar la huella de carbono en planillas. Su tarea pasa a ser definir el método de cálculo (factor de emisión por kilómetro, criterio de zona crítica) y validar el indicador que genera el sistema. |
| Gestión regulatoria, alianzas y sostenibilidad (PROC-02) | Acuerda ese método con el municipio y pasa a reportar sobre evidencia trazable en lugar de planillas estimadas a mano; insumo central para la renovación de la licencia. |
| Gestión de talento humano (PROC-11) | Capacita a supervisores y cuadrillas en el nuevo modo de trabajo y acompaña el dimensionamiento de turnos necesario para sostener el 85 % de disponibilidad. |

**Indirectos** (no ejecutan la mejora, pero sus insumos o resultados cambian):

| Proceso | Cambio |
|---|---|
| Gestión financiera (PROC-08) | Obtiene el costo logístico real por zona y viaje, insumo necesario para controlar la baja del 35 % al 20 % del gasto operativo. |
| Gestión de comercialización (PROC-05) | Se beneficia de la mejora en disponibilidad, que impacta directamente en retención y calificación, y recibe las calificaciones por viaje para sus campañas de fidelización. |
| Dirección estratégica y expansión (PROC-01) | Recibe información operativa confiable y en tiempo real (viajes no concretados, disponibilidad por zona, reclamos) para decidir sobre crecimiento y asignación de recursos, hoy basada en datos con cuatro horas de latencia. |
| Gestión administrativa (PROC-07) | Cambia su soporte documental: los registros operativos pasan a ser digitales, fechados y auditables. |
| Gestión de compras y abastecimiento (PROC-09) | Abastece licencias, dispositivos y repuestos según la demanda que el sistema anticipa, en lugar de reponer por urgencia. |

**Alcance de la propuesta:** la iniciativa responde a las estrategias **DA y FO** del CAME. Las estrategias **DO** (reemplazo progresivo de camionetas a combustión) y **FA** (plan de saturación preventiva en zonas críticas) se desarrollan como propuestas de valor complementarias "en las filas siguientes" (no incluidas en el material recibido), que suman a Dirección estratégica y expansión y a Gestión de compras y abastecimiento como procesos directos.

### B.11.4 Alineación estratégica

| Eje | Contenido del Miro |
|---|---|
| Disponibilidad | Elevar de < 60 % a ≥ 85 % en zonas críticas dentro de 8 meses. El software ordena la decisión, pero la disponibilidad depende de que el proceso acompañe: la priorización automática de redistribución sirve solo si hay cuadrillas y camionetas asignadas a esas zonas en los horarios pico, y si las unidades rotas vuelven rápido a la calle. Por eso el objetivo exige también dimensionar la capacidad operativa (turnos, cuadrillas y vehículos de reparto por franja horaria) y acortar el tiempo de retorno al servicio tras una reparación, apoyado en la clasificación automática de ingreso al depósito. |
| Calidad del servicio | Reducir los viajes iniciados no concretados de 22 % a < 2 % en 6 meses. |
| Eficiencia | Bajar el peso de la logística del 35 % a < 20 % del gasto operativo en 12 meses. |
| Cliente | Elevar la calificación de la app de 3,8 a > 4,5 y la retención mensual de 67 % a 80 % en 8 meses. |
| Sostenibilidad / regulación | Demostrar una reducción del 25 % de la huella de carbono logística y disminuir 50 % los reclamos vecinales por obstrucción, apoyando la renovación de la licencia municipal en 8 meses. La reducción de huella se produce porque hoy las camionetas recorren kilómetros en vacío buscando unidades a ciegas: con rutas optimizadas y prioridades generadas por el sistema se recorre menos distancia para mover la misma cantidad de vehículos, y menos kilómetros significa menos emisiones. La baja de reclamos vecinales viene de la validación de zona permitida al cierre del viaje, que evita que la unidad quede abandonada en la vereda, y de la detección de unidades inmovilizadas, que permite retirarlas antes de que el vecino denuncie. |

### B.11.5 Cómo se asegura el cumplimiento

| Aspecto | Contenido del Miro |
|---|---|
| Auditabilidad ante el municipio | La diferencia está en el origen del dato. Cada indicador se calcula sobre registros de telemetría y GPS fechados y asociados a un vehículo y un viaje concretos, de modo que el municipio pueda verificar la cifra contra el dato que la respalda. Además se acuerda de antemano cómo se calcula (factor de emisión por kilómetro y criterio de zona crítica), para que el resultado sea siempre el mismo sin importar quién arme el reporte. |
| Calificación de la app | Se trata como resultado, no como objetivo directo. Se monitorea sobre dos indicadores que sí dependen del proceso: el porcentaje de viajes no concretados y el tiempo de resolución de reclamos. También se mide la calificación por zona y por tipo de incidente, para ver si la mejora operativa se refleja en la percepción del usuario y corregir antes de los 8 meses. |
| Reducción de reclamos | Los de usuarios bajan al desaparecer su causa. Los vecinales por obstrucción se atacan con la detección automática de unidades inmovilizadas en vía pública, que dispara el retiro sin esperar la denuncia, y se miden sobre el registro georreferenciado del canal municipal para identificar zonas reincidentes. |

### B.11.6 Stakeholders / expectativas respecto de la propuesta

| Stakeholder | Expectativa |
|---|---|
| Usuarios | Encontrar unidades realmente disponibles, con batería y condiciones técnicas adecuadas; menos cancelaciones y soporte que resuelva. |
| Municipio y comunidad | Cumplimiento verificable del 85 % de disponibilidad, menos obstrucciones en vía pública y métricas ambientales trazables al dato de origen. |
| Operaciones / Logística | Planificación anticipada, rutas claras y menos kilómetros en vacío. |
| Mantenimiento / Recarga | Prioridades y estados digitales sincronizados con la app. |
| Customer Success | Reclamos contextualizados con telemetría en tiempo real. |
| Dirección / Finanzas | Menor costo operativo, KPI confiables y menor riesgo de perder la concesión. |

<a id="b12"></a>
## B.12 Diagrama BPMN del proceso (imagen del Miro)

Transcripción de la imagen. El diagrama no indica si es AS-IS o TO-BE.

**Pool:** "Proceso: Gestionar el servicio de movilidad urbana".

**Carriles:**

| Carril | Nombre en el diagrama |
|---|---|
| L1 | Cliente |
| L2 | Responsable de alquiler automatizado |
| L3 | Colaborador |
| L4 | Supervisor de logística |

**Eventos:**

| ID | Tipo | Nombre | Carril |
|---|---|---|---|
| BPMN-E01 | Inicio | Solicitud de movilidad urbana | L2 |
| BPMN-E02 | Fin | Viaje cancelado (después de "Enviar vehículo a recarga") | L3 |
| BPMN-E03 | Fin | Viaje cancelado (después de "Informar problema y cancelar viaje") | L2 |
| BPMN-E04 | Fin | Unidad disponible para un nuevo uso | L2 |

**Almacenes y objetos de datos:** DS01 Scooters · DS02 Bicicletas · DS03 Baterías · DS04 Medios de pago · DS05 Reportes de daños · DS06 Viajes · DS07 Cuentas corporativas · DS08 Reclamos · DS09 Cobros · DS10 Tareas · DS11 Reparaciones · DO01 Reporte de daño (objeto) · DO02 Reporte de ocupación territorial (objeto).

**Actividades, compuertas y flujo** (tipo según el ícono de la tarea; "lee/escribe" según la dirección de las asociaciones de datos):

| ID | Carril | Tipo | Elemento | Datos | Flujo siguiente |
|---|---|---|---|---|---|
| T01 | L2 | Servicio | Localizar vehículo | Lee DS01, DS02 | → T02 |
| T02 | L2 | Servicio | Verificar si la batería tiene suficiente carga | Lee DS01 | → G01 |
| G01 | L2 | XOR | (batería suficiente) | — | sí → T05; no → T03 |
| T03 | L2 | Servicio | Registrar necesidad de recarga | Escribe DS01, DS02, DS03 | → T04 |
| T04 | L3 | Manual | Enviar vehículo a recarga | — | → E02 |
| T05 | L1 | Manual | Verificar si el vehículo presenta daños visibles | — | → G02 |
| G02 | L1 | XOR | (daños visibles) | — | sí → T06; no → T07 |
| T06 | L1 | Usuario | Registrar reporte de daño | Escribe DO01, DS05 | → T07 |
| T07 | L2 | Servicio | Verificar validez medio de pago | Lee DS04 | → G03 |
| G03 | L2 | XOR | (medio de pago válido; rótulos no visibles en la imagen) | — | → T09 / → T08 |
| T08 | L2 | Servicio | Informar problema y cancelar viaje | Escribe DS06 | → E03 |
| T09 | L2 | Servicio | Desbloquear vehículo y registrar inicio de viaje | Escribe DS06 | → T10 |
| T10 | L2 | Servicio | Monitorear el viaje | Lee/escribe DS06 | → T11 |
| T11 | L1 | Usuario | Registrar finalización de viaje | Escribe DS06 | → T12 |
| T12 | L2 | Servicio | Verificar si está correctamente estacionado | Lee DS06 | → G04 |
| G04 | L2 | XOR | (correctamente estacionado) | — | sí → T14; no → T13 |
| T13 | L2 | Servicio | Informar al cliente y continuar facturando | Escribe DS06 | → T14 |
| T14 | L2 | Servicio | Verificar si es cliente corporativo | Lee DS06, DS07 | → G05 |
| G05 | L2 | XOR | (cliente corporativo) | — | no → T15; sí → T18 |
| T15 | L2 | Servicio | Verificar si existe algún reclamo | Lee DS08 | → G06 |
| G06 | L2 | XOR | (existe reclamo) | — | sí → T16; no → T17 |
| T16 | L2 | Servicio | Dejar cobro pendiente a revisión | Escribe DS09 | → T21 |
| T17 | L2 | Servicio | Realizar y registrar cobro | Escribe DS09 | → T21 |
| T18 | L2 | Servicio | Registrar viaje en facturación mensual | Escribe DS07 | → T19 |
| T19 | L2 | Servicio | Verificar si supera el cupo mensual | Lee DS07 | → G07 |
| G07 | L2 | XOR | (supera el cupo) | — | sí → T20; no → T21 |
| T20 | L2 | Servicio | Facturar excedente a tarifa individual | Escribe DS07 | → T21 |
| T21 | L2 | Servicio | Verificar si requiere recarga | Lee DS01 | → G08 |
| G08 | L2 | XOR | (requiere recarga) | — | sí → T22; no → T25 |
| T22 | L2 | Servicio | Informar necesidad de recarga | Escribe DS10, DS03 | → T23 |
| T23 | L3 | Manual | Recargar batería | — | → T24 |
| T24 | L3 | Usuario | Registrar correcta recarga | Escribe DS10, DS03 | → T25 |
| T25 | L2 | Servicio | Verificar si tiene daños registrados | Lee DS01, DS02 | → G09 |
| G09 | L2 | XOR | (daños registrados) | — | sí → T26; no → T29 |
| T26 | L2 | Servicio | Informar necesidad de reparación | Escribe DS10, DS11 | → T27 |
| T27 | L3 | Manual | Realizar las reparaciones pertinentes | — | → T28 |
| T28 | L3 | Usuario | Registrar la reparación | Escribe DS11, DS10 | → T29 |
| T29 | L2 | Servicio | Generar reportes de ocupación territorial | Lee DS01, DS02; genera DO02 | → T30 |
| T30 | L4 | Usuario | Consultar reporte de ocupación | Lee DO02 | → T31 |
| T31 | L4 | Usuario | Asignar rutas de redistribución | Escribe DS10 | → T32 |
| T32 | L3 | Usuario | Consultar vehículos a redistribuir | Lee DS10 | → T33 |
| T33 | L3 | Manual | Redistribuir vehículo | — | → T34 |
| T34 | L3 | Usuario | Registrar correcta redistribución | Escribe DS10 | → T35 |
| T35 | L2 | Servicio | Registrar vehículo como disponible | Escribe DS01, DS02 | → E04 |
