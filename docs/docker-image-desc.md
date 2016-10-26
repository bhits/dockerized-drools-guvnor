# Short Description
The Drools Guvnor is a centralized repository to manage business rules within Consent2Share.

# Full Description

# Supported Tags and Respective `Dockerfile` Links

[`5.5.0`](https://github.com/bhits/guvnor/Dockerfile), [latest](https://github.com/bhits/guvnor/Dockerfile) [(5.5.0/Dockerfile)](https://github.com/bhits/guvnor/Dockerfile)

For more information about this image, please see the [GitHub repository](https://github.com/bhits/guvnor).

# What is Guvnor?

C2S uses [JBoss Drools Guvnor](https://docs.jboss.org/drools/release/5.5.0.Final/drools-guvnor-docs/html_single/) as a user interface and a versioned repository for business rules of its Business Rule Management System (BRMS). Guvnor also offers a guided editor while creating/editing rules, versioning, and Quality Assurance (QA) support for testing and validating the changes to the business rules. The [Document Segmentation Service (DSS) API](#document-segmentation-service-api) uses the [JBoss Drools Expert](https://docs.jboss.org/drools/release/5.4.0.Final/drools-expert-docs/html_single/) to run the business rules that are retrieved from the Guvnor instance with given arguments in a *Document Segmentation* request context. These rules and the execution result are used as *Tagging Directives* and they drive the *Document Tagging* phase of *Document Segmentation Service*.

For more information and related downloads for Consent2Share, please visit [Consent2Share](https://bhits.github.io/consent2share/).

# How to use This Image

## Start a c2s-guvnor Instance

`docker run  --name c2s-guvnor -d bhits/c2s-guvnor:5.5.0`

*NOTE: In order for this API to fully function as a microservice in the Consent2Share application, it is required to setup the dependency microservices and support level infrastructure. Please refer to the [Consent2Share Deployment Guide](https://github.com/bhits/consent2share/releases/download/2.0.0/c2s-deployment-guide.pdf) for instructions to setup the Consent2Share infrastructure.*

## Environment Variables

When you start the c2s-guvnor image, you can edit the configuration of the c2s-guvnor instance by passing one or more environment variables on the command line. 

### JAVA_OPTS 

This environment variable is used to setup JVM argument, such as memory configuration, logger configuration.

Example to setup memory configuration: 

`docker run --name c2s-guvnor -e JAVA_OPTS="-Xms512m -Xmx700m -Xss1m" -d bhits/c2s-guvnor:5.5.0`

# Supported Docker Versions

This image is officially supported on Docker version 1.12.1.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see the [Docker installation documentation](https://docs.docker.com/engine/installation/) for details on how to upgrade your Docker daemon.

# License

View [license](https://github.com/bhits/dockerized-drools-guvnor) information for the software contained in this image.

# User Feedback

## Documentation 

Documentation for this image is stored in the [bhits/dockerized-drools-guvnor](https://github.com/bhits/dockerized-drools-guvnor) GitHub repository. Be sure to familiarize yourself with the repository's README.md file before attempting a pull request.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/bhits/dockerized-drools-guvnor/issues).