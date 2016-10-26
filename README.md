## Guvnor Server
Drools Guvnor is a web application with a UI that a business expert can use to manage (e.g., write, edit, store, test, version) the business rules. This image is  configured to use the Consent2Share fact model and the rules are consumed by the Consent2Share Document Segmentation System ([DSS](https://github.com/bhits/dss-api)).

## Run as Web Application

### Prerequisites
[Apache Tomcat 8](http://tomcat.apache.org/) is the recommended application server to run this service.

### Deployment
Simply copy the `war` (guvnor-5.5.0.Final.war) file to the `webapps` folder of Tomcat and start Tomcat.

## Run as Docker Image

### Command to create docker image

`docker run  --name c2s-guvnor -d bhits/c2s-guvnor:5.5.0`

*NOTE: In order for this API to fully function as a microservice in the Consent2Share application, it is required to setup the dependency microservices and support level infrastructure. Please refer to the [Consent2Share Deployment Guide](https://github.com/bhits/consent2share/releases/download/2.0.0/c2s-deployment-guide.pdf) for instructions to setup the Consent2Share infrastructure.*

### Environment Variables

When you start the c2s-guvnor image, you can edit the configuration of the c2s-guvnor instance by passing one or more environment variables on the command line. 

### JAVA_OPTS 

This environment variable is used to setup JVM argument, such as memory configuration, logger configuration.

Example to setup memory configuration: 

`docker run --name c2s-guvnor -e JAVA_OPTS="-Xms512m -Xmx700m -Xss1m" -d bhits/c2s-guvnor:5.5.0`

### Supported Docker Versions

This image is officially supported on Docker version 1.12.1.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see the [Docker installation documentation](https://docs.docker.com/engine/installation/) for details on how to upgrade your Docker daemon.


## License

View [license](https://github.com/bhits/dockerized-drools-guvnor) information for the software contained in this image.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/bhits/dockerized-drools-guvnor/issues).