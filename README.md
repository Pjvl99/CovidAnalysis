# CovidAnalysis

- This project consists of an ETL with raw data from different pages (kaggle, us.gov, etc.), with the final objective of carrying out an analysis of covid-19 in the United States economy.

- Steps to run the project:

   1. Have Talend Open Studio for Big Data installed (https://sourceforge.net/projects/talend-bigdata/)
   2. To run the project you must import (the LOCAL_PROJECT) from Talend and then run, to adjust it to your data you must use the context variables, in the context section below jobs.
   3. To set up a hadoop environment for the project, cloudera's hortonworks was used.

- The tool to do data cleaning in this project was: Talend Open Studio, here is an example of what the cleaning jobs look like in the Talend UI.
  
![Screenshot from 2023-04-15 13-47-40](https://user-images.githubusercontent.com/61527863/235322452-37f095c9-070b-47cf-84bb-f80fc98b1c0d.png)

  - For data modeling, a snowflake diagram was used for the data warehouse:
  
  
![Screenshot from 2023-04-15 13-48-14](https://user-images.githubusercontent.com/61527863/235322473-36004879-0c22-471f-90d5-81c0c30bdc26.png)

  - The objective of this project was to be able to upload them to HDFS in order to give better treatment to the data. Here is an example of creating folders in HDFS for the data.
  
  ![Screenshot from 2023-04-15 14-27-01](https://user-images.githubusercontent.com/61527863/235322500-4aa88e49-6ad7-420e-b5fe-55a48b791805.png)

  ![Screenshot from 2023-04-15 14-27-09](https://user-images.githubusercontent.com/61527863/235322513-d2a4b31a-a1bd-40f5-8123-439b5ec40c24.png)

  - Here is an example of a data cleaning job, where maps and filters are applied to take the most important data from the dataset, with the aim of uploading that data to HDFS.
  
  ![Screenshot from 2023-04-15 14-52-25](https://user-images.githubusercontent.com/61527863/235322538-cab81986-ab28-453c-9336-802e592ee5c0.png)
  
  - An example of what the folders with data in hdfs look like:
  
  ![Screenshot from 2023-04-15 14-54-01](https://user-images.githubusercontent.com/61527863/235322596-2e880e9a-0fcf-41dd-b514-79808104bfa0.png)
  
  - Once the data was ingested into hdfs, the data warehouse was created in hive, here is an example of a query
  
  ![Screenshot from 2023-04-15 18-03-12](https://user-images.githubusercontent.com/61527863/235322570-638d2328-2325-4857-8bcc-c5e39c4b87c9.png)
  
  - Brief analyzes were performed on the data using spark sql:
  
  ![Screenshot from 2023-04-16 19-08-59](https://user-images.githubusercontent.com/61527863/235322630-950c4e40-8bf8-49a7-a22a-ed4c1ff1ec31.png)

  ![Screenshot from 2023-04-16 19-11-48](https://user-images.githubusercontent.com/61527863/235322632-3f55c4f0-51ab-4036-a9f4-9b3d89b71d97.png)
  
  - Finally, the data analysis was carried out in tableau:

  ![Screenshot from 2023-05-03 21-10-27](https://github.com/Pjvl99/CovidAnalysis/assets/61527863/9181c9ac-f4c8-4618-9a8e-171bd446c874)
  
  ![Screenshot from 2023-05-03 21-31-50](https://github.com/Pjvl99/CovidAnalysis/assets/61527863/2982e5f6-26de-4d0d-9082-fe8ec4b831f4)

  ![Screenshot from 2023-05-03 22-01-13](https://github.com/Pjvl99/CovidAnalysis/assets/61527863/2ec05f19-1a37-4fdd-b5ef-d4caf07b44a9)

  ![Screenshot from 2023-05-10 20-29-33](https://github.com/Pjvl99/CovidAnalysis/assets/61527863/5d7245f9-538c-4d85-8a61-28e7814857a5)
  
  ![Screenshot from 2023-05-03 21-52-19](https://github.com/Pjvl99/CovidAnalysis/assets/61527863/0a3677d8-1cb5-4e27-8d0e-f42eaa1e77e7)

  
  

  

  

  
  


