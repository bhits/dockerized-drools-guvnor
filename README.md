## Dockerized JBoss Drools Guvnor
The Consent2Share (C2S) application uses [JBoss Drools Guvnor](https://docs.jboss.org/drools/release/5.5.0.Final/drools-guvnor-docs/html_single/) as a user interface and a versioned repository for business rules of its Business Rule Management System (BRMS). Guvnor also offers a guided editor while creating/editing rules, versioning, and Quality Assurance (QA) support for testing and validating the changes to the business rules. The [Document Segmentation Service (DSS) API](https://github.com/bhits/dss-api) uses the [JBoss Drools Expert](https://docs.jboss.org/drools/release/5.4.0.Final/drools-expert-docs/html_single/) to run the business rules that are retrieved from the Guvnor instance with given arguments in a *Document Segmentation* request context. These rules and the execution result are used as *Tagging Directives* and they drive the *Document Tagging* phase of *Document Segmentation Service*.

## Run as Web Application

### Prerequisites
[Apache Tomcat 8](http://tomcat.apache.org/) is the recommended application server to run this service.

### Deployment
Copy `guvnor-5.5.0.Final.war` to `webapps` folder of Tomcat, rename as `guvnor.war` and start Tomcat.

### Import Consent2Share rules
 
 +  Open guvnor in web browser, `http://localhost:8080/guvnor`. 
 +  From the navigation panel, select `Administration`-> [`Import Export`](https://docs.jboss.org/drools/release/5.5.0.Final/drools-guvnor-docs/html_single/#d0e3390) 
 +  Choose file [repository_export.xml](https://github.com/bhits/dockerized-drools-guvnor/blob/master/repository_export.xml) to import.
  
*NOTE: After logging in the guvnor for the first time, if it asks you to install a sample repository, click “No thanks”.*

## Run as Docker Image

### Command to build docker image

`docker build -t bhits/guvnor:5.5.0 .`

*NOTE: this docker image will actually contain the C2S Fact Model and initial business rules, so you won’t actually need to import the repository as mentioned in the “Import Consent2Share rules” section.*

### Command to run guvnor instance

`docker run --name guvnor -d bhits/guvnor:5.5.0`

*NOTE: In order for this API to fully function as a microservice in the Consent2Share application, it is required to setup the dependency microservices and support level infrastructure. Please refer to the [Consent2Share Deployment Guide](https://github.com/bhits/consent2share/releases/download/2.0.0/c2s-deployment-guide.pdf) for instructions to setup the Consent2Share infrastructure.*

### Environment Variables

When you start the c2s-guvnor image, you can edit the configuration of the guvnor instance by passing one or more environment variables on the command line. 

#### JAVA_OPTS

This environment variable is used to setup JVM argument, such as memory configuration, logger configuration.

Example to setup memory configuration: 

`docker run --name guvnor -e JAVA_OPTS="-Xms512m -Xmx700m -Xss1m" -d bhits/guvnor:5.5.0`


## License

1. View [license](https://github.com/bhits/dockerized-drools-guvnor/blob/master/LICENSE) information for the software contained in this image.
2. The war file in this repository is downloaded from [Guvnor release](http://download.jboss.org/drools/release/5.5.0.Final/) and credits go to drools.jboss.org

## Contact

If you have any questions, comments, or concerns please see [Consent2Share](https://bhits.github.io/consent2share/) project site.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/bhits/dockerized-drools-guvnor/issues).