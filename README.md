# CovidAnalysis

- Este proyecto consiste en un ETL con datos crudos de diferentes páginas (kaggle, us.gov, etc), con el objetivo final de realizar un análisis del covid-19 en la economía de Estados Unidos.

- Pasos para correr el proyecto:

  1. Tener instalado Talend Open Studio for Big Data (https://sourceforge.net/projects/talend-bigdata/)
  2. Para correr el proyecto se debe importar (el LOCAL_PROJECT) desde Talend y luego correr, para ajustarlo a tus datos se deben utilizar las variables de contexto, en el apartado context abajo de jobs.
  3. Para montar un ambiente de hadoop para el proyecto, se utilizo hortonworks de cloudera.

- La herramienta para hacer la limpieza de datos en este proyecto fue: Talend Open Studio, acá hay un ejemplo de como se ven los jobs de limpieza en la UI de talend.
  
![Screenshot from 2023-04-15 13-47-40](https://user-images.githubusercontent.com/61527863/235322452-37f095c9-070b-47cf-84bb-f80fc98b1c0d.png)

  - Para el modelado de datos se utilizo un diagrama tipo snowflake para el data warehouse:
  
  
![Screenshot from 2023-04-15 13-48-14](https://user-images.githubusercontent.com/61527863/235322473-36004879-0c22-471f-90d5-81c0c30bdc26.png)

  - El objetivo de este proyecto era poder subirlos a hdfs para poder darles un mejor tratamiento a los datos, acá hay un ejemplo de la creación de carpetas en hdfs para los datos.
  
  ![Screenshot from 2023-04-15 14-27-01](https://user-images.githubusercontent.com/61527863/235322500-4aa88e49-6ad7-420e-b5fe-55a48b791805.png)

  ![Screenshot from 2023-04-15 14-27-09](https://user-images.githubusercontent.com/61527863/235322513-d2a4b31a-a1bd-40f5-8123-439b5ec40c24.png)

  - Acá hay un ejemplo de un job para la limpieza de datos, donde se aplican mapas y filtros para tomar los datos mas importantes del dataset, con el objetivo de subir esos datos a hdfs.
  
  ![Screenshot from 2023-04-15 14-52-25](https://user-images.githubusercontent.com/61527863/235322538-cab81986-ab28-453c-9336-802e592ee5c0.png)
  
  - Un ejemplo de como se ven las carpetas con datos en hdfs:
  
  ![Screenshot from 2023-04-15 14-54-01](https://user-images.githubusercontent.com/61527863/235322596-2e880e9a-0fcf-41dd-b514-79808104bfa0.png)
  
  - Una vez se ingestó la data en hdfs, se procedió a crear el data warehouse en hive, acá hay un ejemplo de una consulta
  
  ![Screenshot from 2023-04-15 18-03-12](https://user-images.githubusercontent.com/61527863/235322570-638d2328-2325-4857-8bcc-c5e39c4b87c9.png)
  
  - Se realizaron breves análisis a los datos utilizando spark sql:
  
  ![Screenshot from 2023-04-16 19-08-59](https://user-images.githubusercontent.com/61527863/235322630-950c4e40-8bf8-49a7-a22a-ed4c1ff1ec31.png)

  ![Screenshot from 2023-04-16 19-11-48](https://user-images.githubusercontent.com/61527863/235322632-3f55c4f0-51ab-4036-a9f4-9b3d89b71d97.png)

