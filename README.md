# docker-jenkins

Sets up a container with jenkins installed listening on port 8080.

## Usage

To run the container, do the following:

    docker run -d -P nickveenhof/jenkins
    
    docker ps
    CONTAINER ID        IMAGE                       COMMAND                CREATED             STATUS              PORTS                     NAMES
    1131d37c38b1        nickveenhof/jenkins:latest    java -jar /opt/jenki   12 seconds ago      Up 12 seconds       0.0.0.0:49153->8080/tcp   drunk_fermi

Your jenkins instance is now available by going to http://localhost:49153.

### Persistent Configuration

By default, JENKINS_HOME is set to /jenkins.  The best way to persist or import configuration is to have a separate data volume for /jenkins.  Below are a few references on data volumes.

  * https://docs.docker.com/userguide/dockervolumes/
  * http://aespinosa.github.io/blog/2014-03-05-import-jenkins-configuration-to-docker.html
  * https://github.com/aespinosa/docker-jenkins/blob/master/test/jenkins_test.bats#L3

## Building

To build the image, simply invoke

    docker build github.com/nickveenhof/docker-jenkins

A prebuilt container is also available in the docker index

    docker pull nickveenhof/jenkins

## Available Packages

git and java are installed by default. Everything is installable through jenkins.

## Author

  * Allan Espinosa (<allan.espinosa@outlook.com>)
  * Gwenn Etourneau (<g.etourneau@free.fr>)
  * Nick Veenhof (nick.veenhof@acquia.com)

## LICENSE

Copyright 2013 Allan Espinosa & Nick Veenhof

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
