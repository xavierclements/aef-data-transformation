# Analytics Engineering Framework - Data Transformation
[Analytics engineers](https://www.getdbt.com/what-is-analytics-engineering)  lay the foundation for others to organize, transform, and document data using software engineering principles. Providing easy to use data platforms that empower data practitioners to independently build data pipelines in a standardized and scalable way, and answer their own data-driven questions.

This opinionated data transformation management repository can be used independently to define, store, and deploy data transformation definitions. However, is designed as a component within a comprehensive Analytics Engineering Framework comprising:
1. **Orchestration Framework**: Maintained by Analytics Engineers to provide seamless, extensible orchestration and execution infrastructure.
1. **Data Model**: Directly used by end data practitioners to manage data models, schemas, and Dataplex metadata.
1. **Data Orchestration**: Directly used by end data practitioners to define and deploy data pipelines using levels, threads, and steps.
1. **(This repository) Data Transformation**: Directly used by end data practitioners to define, store, and deploy data transformations.

### Repository
![data_processing_repo.png](data_processing_repo.png)

This repository is a central location for storing and deploy artifacts necessary for your data transformations, such as JDBC drivers and compiled JAR dependencies. However, its core function is to maintain configuration files that define your transformations. These JSON, YAML, or similar parameter files are referenced as reusable steps in your data pipelines, and are interpreted by the execution infrastructure within the Orchestration framework.
```
├── artifacts
│   ├── dataporc
│   │   └── custom_dependency.jar
│   ├── jdbcjars
│   │   └── postgresql.jar
│   └── ...
└── jobs
    ├── dev
    │   ├── dataflow-flextemplate-executor
    │   │   └── sample_jdbc_dataflow_ingestion.json
    │   │   └── ...        
    │   ├── dataflow-beam-YAML-executor
    │   │   └── sample_beam.yaml
    │   │   └── ... 
    │   ├── dataform-tag-executor
    │   │   └── run_dataform_tag.json
    │   │   └── ... 
    │   ├── dataproj-templates
    │   └── ...
    ├── prod
    └── ...
```

### Terraform:
<!-- BEGIN TFDTFOC -->
| name                                 | description                                                                                                                                                                                                                        | type     | required | default |
|--------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|----------|---------|
| [domain](variables.tf#L1)           | Your organization or domain name, organization if centralized data management, domain name if one repository for each data domain in a Data mesh environment.                                                                      | string   | true     | -       |
| [project](variables.tf#L6)          | The project where the GCS buckets for storing your artifacts and job definitions will be created.                                                                                                                                    | string   | true     | -       |
| [region](variables.tf#L11)         | The region where the GCS buckets for storing your artifacts and job definitions will be created.                                                                                                                                      | string   | true     | -       |
| [environment](variables.tf#L16)     | Environment folder name you want to deploy. ../jobs/<<ENVIRONMENT>>/.. If not set wherever is in the dev environment folder will be deployed.                                                                                             | string   | false    | dev      |
<!-- END TFDOC -->

## Usage
While this repository can be used to keep track of your dependencies and data transformation definitions, the provided terraform code can be used to control deployment, but you can deploy it as another step in your CI/CD pipeline instead.
1. Place and commit your artifacts.
2. Place and commit your job definition parameter files.
3. Define your terraform variables and deploy (plan/apply).
