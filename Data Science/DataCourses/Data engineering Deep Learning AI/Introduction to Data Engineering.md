[**Curso 1 - Introducción a la ingeniería de datos**](https://www.coursera.org/learn/intro-to-data-engineering/home/welcome)

Este curso consta de 4 semanas de contenido y cubre estos objetivos principales de aprendizaje:

- Identificar los principales colaboradores y partes interesadas para los ingenieros de datos
- Articular un marco mental para construir soluciones de ingeniería de datos
- Identificar algunas de las consideraciones necesarias para la recopilación de requisitos al inicio de un nuevo proyecto
- Describir la estructura del ciclo de vida de la ingeniería de datos y sus corrientes subyacentes, y cómo pensar en los problemas de ingeniería de datos a través de esta lente
- Identificar algunas de las tecnologías clave que pueden emplearse en las distintas fases del ciclo de vida de la ingeniería de datos
- Evaluar tecnologías y herramientas en el contexto de los requisitos y una buena arquitectura de datos   
- Diseñar una arquitectura de datos en AWS basada en los requisitos de las partes interesadas
- Implementar una canalización por lotes y de streaming en AWS para respaldar un sistema de recomendación de productos

*Semana 1*😜 Como piensa un ingeniero de datos 
## Data lifecycle 

- Generation -> Ingestion, Transformation, Serving -> Analytics, Machine learning, Reserve ETL 
- Tener datos sin procesar, y convertirlos en algo util. 
### Corrientes adyacentes del la ingenieria de datos.
Security, Data Management, Data ops, Data Architecture, Orchestration, Software

### Requisitos del sistema 
#### Funcionales 

What the system needs to be able to do 

#### No funcionales 

How the system accomplishes what it needs to do 

￼￼￼Recopilación de requisitos

 Convertir las necesidades de los datos para las partes interesadas. 
 Data science / Real time 

￼
￼
￼


￼￼￼Ingeniero de datos en la nube 

￼￼￼Introducción a la nube de AWS

￼
￼
￼

￼￼Servicios principales￼￼

Compute: Amazon elastic compute (EC2) - Provides virtual machines 
Networking: Amazon virtual private network (VPC) - Seguridad de datos
Storage 

￼￼Semana 2￼￼😜
￼￼￼Generación de datos en sistemas fuente 

Source system / Txt, Mp3
API para recuperarlos en un formato deseado 

#### Ingestion

Batch VS Stream

| Característica | Ingestión Batch                                               | Ingestión Streaming                                                          |
| -------------- | ------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| Definición     | Los datos se recopilan y procesan en lotes.                   | Los datos se procesan de forma continua a medida que llegan.                 |
| Frecuencia     | Programada (cada hora, día, semana, etc.).                    | Continua y en tiempo real o casi en tiempo real.                             |
| Latencia       | Alta (minutos, horas o días).                                 | Muy baja (milisegundos o segundos).                                          |
| Procesamiento  | Se ejecuta sobre un conjunto completo de datos.               | Se ejecuta sobre cada evento o pequeños grupos de eventos.                   |
| Complejidad    | Menor.                                                        | Mayor.                                                                       |
| Costo          | Generalmente más bajo.                                        | Generalmente más alto.                                                       |
| Casos de uso   | ETL, reportes, análisis históricos, entrenamiento de modelos. | Monitoreo en tiempo real, detección de fraude, IoT, redes sociales, alertas. |
| Ejemplo        | Cargar todas las ventas del día a medianoche.                 | Registrar una venta en el sistema en el momento en que ocurre.               |

#### Almacenamiento 

Storage abstractions 
Storage systems 
Raw ingredients 
#### Queries, Modeling and Transformation 

#### Datos de servicio 

Tener los datos para las disponibilidades de uso, de analisis y de interpretación. Tener el ecosistema de datos bien construido. 

## Corrientes submarinas 
### Seguridad 

Información privada

### Gestión de los datos y arquitectura de datos 

Calidad de los datos

Arquitectura 
Choose common componentes wisely 
Plan for failure 
Architect for scalability 
Architecture is leadership 
Always be architetcing 
Build loosely coupled systems 
Make reversible decisions 
Prioritize security 
Embrace FinOps 

### DataOps 

DevOps y DataOps


*Semana 3*




