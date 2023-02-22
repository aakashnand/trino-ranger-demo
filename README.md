# trino-ranger-demo
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/aakashnand/trino-ranger-demo/build-push-docker-image.yml) ![Docker Pulls](https://img.shields.io/docker/pulls/aakashnand/trino-ranger-demo)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/aakashnand/trino-ranger-demo/v3.0)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/aakashnand/trino-ranger-demo?sort=date)

Rebranding of PrestoSQL to Trino brought many challenges. This made old `presto-plugin` incompatible with new trino
because of the old package references such as `io.prestosql`.

This repository is part of blog I wrote in Towards Data Science.

- Integrating Trino and Apache Ranger: https://towardsdatascience.com/integrating-trino-and-apache-ranger-b808f6b96ad8


Ranger trino plugin is now officially available in ranger version 2.3.0

But you can refer this repository for latest version of trino plugin. For more information about trino versions and compatible trino ranger plugin checkout [releases page](https://github.com/aakashnand/trino-ranger-demo/releases)



| files                                      | Trino version compatibility and notes                  |
|-------------------------------------------|--------------------------------------------------------|
| [ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz(Latest)](https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz) | Works with trino version from 405-406  |
| [ranger-2.1.0-admin.tar.gz](https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-2.1.0-admin.tar.gz)                 | Ranger Admin Version 2.1.0 used in this repository
| [ranger-3.0.0-SNAPSHOT-trino-plugin-390-403.tar.gz](https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-3.0.0-SNAPSHOT-trino-plugin-390-403.tar.gz) | Works with trino version from 390-403 built with JDK17 |
| [ranger-2.3.0-trino-plugin.tar.gz](https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-2.3.0-trino-plugin.tar.gz)          | Works till trino version 389 built using JDK11         |


<a href="https://www.buymeacoffee.com/aakashnand" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
