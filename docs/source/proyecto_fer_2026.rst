proyecto 
========


Estudio de la conectividad funcional cerebral dinámica durante procesos de atención controlada y auto-referencia.

Desde su desarrollo inicial, las redes de conectividad funcional cerebral por resonancia magnética funcional del estado en reposo han generado un gran 
interés en el estudio de la función cerebral. La conectividad funcional cerebral se estima a partir de la correlación de la señal por resonancia magnética 
del estado de oxigenación en el tejido entre estructuras cerebrales distantes y ha permitido describir redes funcionales en el cerebro humano. Además de 
describir las redes de conectividad por esta metodología es posible estimar los estados de conectividad de dichas redes en forma dinámica, estimado la 
conectividad en segmentos de tiempo que se ligan para describir la evolución de la conectividad funcional y por medio de clasificadores estadísticos se 
pueden determinar los estados de conectividad dinámica característicos del sujeto de estudio. En este proyecto proponemos estudiar la conectividad 
cerebral funcional dinámica de procesos de atención dirigida y estado de autorreferencia en sujetos que practican métodos de meditación en comparación con 
sujetos control que no tienen experiencia en meditación. La razón para estudiar los estados de conectividad dinámica durante procesos de meditación por 
personas experimentadas es que la meditación y, en general, los procesos de atención plena se usan en la actualidad como intervención en casos de 
trastornos psiquiátricos, y resulta de gran interés atender preguntas sobre estos procesos mediante diferentes técnicas.


**Actividades**

Con los datos adquiridos durante el primer año en una coleccion pre-analizada evaluanda por control de calidad (efectos de movimiento entre otros) se 
harán anlálisis de las imágenes estructurale para caracterizar el grosor cortical cerebral de los participantes, de esta población se tomarán los datos de 
neuroimagen funcional del estado de reposo se usarán para estimar las redes de conectividad funcional y los estados de conectividad dinámica por el método 
de ventanas corredizas y metodologías de clasificación por k-means. Los resultados del análisis de conectividad dinámica cerebral se correlacionarán con 
los datos cognitivos de los sujetos. 

Estos resultados se reportarán en el congreso de la Organización de Human Brain Mapping del 2027. Los resultados de 
esta parte, en conjunto con los resultados de la parte estructural se usarán para escribir un reporte que se
enviará a publicar en una revista internacional con revisión por pares. 

Se capturarán las imágenes restantes para completar 120 conjuntos de imágenes por RM de 70 sujetos con experiencia en prácticas de meditación y 50 
controles con los mismos rangos de edad, educación y nivel económico. Se revisará que la base de datos esté completa y en formatos abiertos de carácter 
público como BIDS, y toda la información conductual en las bases de datos adjuntas en formatos compatibles con usos científicos internacionales.

Se revisarán los resultados de las evaluaciones de conectividad funcional dinámica y se compararán los resultados de metodologías por ventanas corredizas 
y clasificadores por modelos de cadenas ocultas de Markov en modelos lineales gaussianos. En particular, compararemos el número de estados de conectividad 
entre las redes basal y de atención dorsal, entre otras. 


**Mis Actividades**

1. Continuar participando activamente en iniciativas, talleres y espacios académicos que fomenten la difusión y divulgación de la ciencia, con el 
propósito de acercar el conocimiento científico a diversos sectores de la sociedad, despertar vocaciones tempranas y contribuir al fortalecimiento de una 
cultura científica accesible, crítica y participativa.

2. Garantizar la alta disponibilidad, integridad y rendimiento óptimo de la base de datos XNAT, encargada de administrar las imágenes de resonancia 
magnética (estructural y funcional) de los proyectos de investigación de posgrado.

Actividades principales:

a) Supervisión en tiempo real: Vigilar CPU, memoria, espacio en disco, latencia, bloqueos (locks) y conexiones activas.

b) Atención de alertas: Responder a alarmas automáticas de caída de servicio, saturación o consultas lentas en cualquier turno (día, noche o fines de semana).

c) Gestión de copias de seguridad: Programar, verificar y probar respaldos completos, diferenciales e incrementales en sitios locales o en la nube.

d) Pruebas de restauración: Validar periódicamente que los respaldos realmente recuperan los datos en tiempos aceptables

e) Gestión de cambios y ventanas de mantenimiento: Aplicar actualizaciones, esquemas o parches coordinando ventanas de bajo tráfico o sin tiempo de inactividad

3. Mantener operativo y eficiente un clúster (equipo distribuido-paralelo) de computadoras de cómputo dedicado al procesamiento de imágenes de 
resonancia magnética (como fMRI, DTI o morfometría), mis  actividades estan divididas en cuatro áreas principales: 1) Incorpporacion de computadoras al 
cluster, 2) Definición de usuarios en el cluster, 3) gestión de recursos y colas, 4. optimización de software científico, 5. administración de 
almacenamiento y mantenimiento de infraestructura.

Desglose de cada una de las actividades:

El procesamiento de neuroimágenes es altamente demandante en entrada/salida de datos (I/O), memoria RAM y procesamiento paralelo, por lo que las tareas 
clave incluyen:


1. Gestión de Colas y Balanceo de Cargas (Schedulers)

• Configuración del gestor de trabajos: Administrar herramientas como Slurm, PBS/Torque o SGE para asignar prioridades y distribuir los análisis entre los 
nodos.
• Optimización de perfiles de recursos: Ajustar límites de memoria RAM, tiempos de ejecución (walltime) y asignación de núcleos (CPU/GPU) según el tipo de 
flujo de trabajo (por ejemplo, evitar que trabajos pesados de preprocesamiento colapsen nodos completos).
• Implementación de arreglos de tareas (Job Arrays): Ayudar a los investigadores a paralelizar el procesamiento de cientos de sujetos o sesiones de 
resonancia simultáneamente sin saturar el sistema.

2. Administración de Software Científico y Contenedores

• Mantenimiento de paquetes de neuroimagen: Instalar, actualizar y resolver conflictos de dependencias en herramientas estándar como FSL, FreeSurfer, SPM, 
AFNI, ANTs o MRtrix3.
• Gestión de entornos aislados: Configurar módulos de entorno (Lmod / Environment Modules) y contenedores (Singularity/Apptainer o Docker) para ejecutar 
pipelines complejos como fMRIPrep o QSIPrep de forma reproducible y sin conflictos entre versiones.
• Compilación optimizada: Compilar librerías matemáticas (BLAS, LAPACK, CUDA) aprovechando la arquitectura específica de los procesadores y tarjetas 
gráficas (GPU) del clúster.



3. Gestión de Almacenamiento de Alto Rendimiento (I/O)

• Mantenimiento de sistemas de archivos paralelos: Administrar almacenamiento como Lustre, BeeGFS, Ceph o GPFS, vitales para leer y escribir miles de 
archivos NIfTI o DICOM al mismo tiempo sin generar cuellos de botella.
• Políticas de retención y limpieza (Scratch): Gestionar el espacio temporal rápido (scratch) donde se escriben los archivos intermedios pesados, 
automatizando la limpieza de datos antiguos y migrando resultados finales a almacenamiento frío o respaldo.
• Integración con bases de datos: Asegurar la conexión rápida y segura entre los servidores PACS/XNAT (donde se guardan las resonancias crudas) y los 
nodos de cómputo.


4. Monitoreo, Hardware y Seguridad

• Monitoreo de rendimiento en tiempo real: Utilizar herramientas como Grafana, Prometheus, Ganglia o Nagios para detectar nodos caídos, fugas de memoria, 
sobrecalentamiento o saturación de red (InfiniBand o Ethernet de alta velocidad).
• Mantenimiento preventivo y correctivo: Actualizar el sistema operativo (generalmente distribuciones Linux como Rocky Linux, AlmaLinux o Ubuntu Server), 
aplicar parches de seguridad y gestionar el reemplazo de discos duros, fuentes de poder o módulos de RAM defectuosos.
• Soporte y capacitación a usuarios: Revisar los scripts de los investigadores para corregir malas prácticas (como escribir millones de archivos pequeños 
en discos lentos) y redactar documentación sobre cómo aprovechar mejor el clúster.
Si estás preparando una descripción de puesto, un plan de trabajo o buscando optimizar un problema específico, dime:
• El gestor de colas o sistema operativo que utilizan
• Los programas principales de resonancia magnética que corren (ej. FreeSurfer, fMRIPrep)
Con esto puedo detallar las tareas o comandos específicos que necesitas.




