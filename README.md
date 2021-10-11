# trino-ranger-demo
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/aakashnand/trino-ranger-demo/ci?label=image%20build&logo=docker) ![Docker Pulls](https://img.shields.io/docker/pulls/aakashnand/trino-ranger-demo)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/aakashnand/trino-ranger-demo)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/aakashnand/trino-ranger-demo)

Rebranding of PrestoSQL to Trino brought many challenges. One of them was Apache Ranger not working with new Trino. 
The old prestosql ranger plugin was no more compatible because of the old package references such as `io.prestosql`.
While there is ongoing JIRA ticket for this in Apache Ranger community but it might take some time to get officially added 
in Ranger project. Meanwhile I have created this repository for tutorial on how to integrate Apache Ranger and Trino. The
tutorial is available at following link.

1. Trino-Ranger-Source-Code
   1.  Ranger version 2.1.0 : https://github.com/aakashnand/ranger/tree/ranger-2.1.0-trino
   2.  Ranger version 3.0.0 : https://github.com/aakashnand/ranger
2. Integrating Trino and Apache Ranger: https://towardsdatascience.com/integrating-trino-and-apache-ranger-b808f6b96ad8

This repository works with latest version of Apache Ranger. To configure ranger version for demo. Change `RANGER_VERSION` in 
[docker-entrypoint.sh](./ranger-admin/docker-entrypoint.sh) of ranger admnin and [docker-entrypoint.sh](./trino/docker-entrypoint.sh) of trino-ranger-plugin. The supported values are `2.1.0` and `3.0.0-SNAPSHOT`