# trino-ranger-demo
Rebranding of PrestoSQL to Trino brought many challenges. One of them was Apache Ranger not working with new Trino. 
The old prestosql ranger plugin was no more compatible because of the old package references such as `io.prestosql`.
While there is ongoing JIRA ticket for this in Apache Ranger community but it might take some time to get officially added 
in Ranger project. Meanwhile I have created this repository for tutorial on how to integrate Apache Ranger and Trino. The
tutorial is available at following link.

1. Trino-Ranger-Source-Code: https://github.com/aakashnand/ranger/tree/ranger-2.1.0-trino
2. Integrating Trino and Apache Ranger: https://towardsdatascience.com/integrating-trino-and-apache-ranger-b808f6b96ad8

