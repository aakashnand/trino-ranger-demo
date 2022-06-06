# trino-ranger-demo
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/aakashnand/trino-ranger-demo/ci?label=image%20build&logo=docker) ![Docker Pulls](https://img.shields.io/docker/pulls/aakashnand/trino-ranger-demo)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/aakashnand/trino-ranger-demo/v3.0)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/aakashnand/trino-ranger-demo?sort=date)

Rebranding of PrestoSQL to Trino brought many challenges. One of them was Apache Ranger not working with new Trino. 
The old prestosql ranger plugin was no more compatible because of the old package references such as `io.prestosql`.

ranger trino plugin is now officially available in ranger version 2.3.0

The latest version of trino plugin is available on the master branch of apache ranger for tutorial on how to integrate Trino and 
Apache Ranger check out following following

- Integrating Trino and Apache Ranger: https://towardsdatascience.com/integrating-trino-and-apache-ranger-b808f6b96ad8
