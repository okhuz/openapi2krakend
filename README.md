### Description
Basic conversion from OpenAPI specification to Krakend config. This is extendable with custom OpenAPI 
attributes and more support for both krakend and openapi configurations.

x-timeout: At top level or at method level modifies timeout for the whole api or for a single endpoint 

### Usage

openapi2krakend can be run before the krakend container to generate krakend.json for krakend to consume.
Services can serve their swagger definitions or even from their documentation pages one can download those swagger
files and convert.

### Arguments

-directory: folder where swagger files live. default is swagger folder in repository.
<br>
-encoding: backend encoding for whole endpoints. default is "json".
<br>
-global-timeout: sets global timeout, default is 3000ms 

### Usage

In make file image creation and build has been declared 

To build:
```shell 
make build
``` 

To dockerize
````shell
make dockerize
````

### Deployment to Kubernetes

In deployment/deployment.yaml file you can set environment variables to "https://service-1/api-specification,https://service-2/api-specification"
then image will download all the specifications supplied and merge and convert all swagger files into a single krakend
configuration file.

````shell
kubectl apply -f ./deployment
````
