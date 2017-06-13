# Alpine Linux Gatling Docker Image
A trivial Dockerfile which installs  [Gatling](http://gatling.io/) onto an [Alpine Linux](https://alpinelinux.org/) Docker image which already has Java installed on it. Can be used for performance testing without the need to install Gatling or its dependencies.

## Getting Started

### Prerequisites
* Local [Docker](https://www.docker.com/) installation

### Install
To build this Docker image, simply run the command below, substituting the tag name with one of your choice (if required).<br>
```
docker build . -t nextmetaphor/alpine-gatling
```

## Deployment
To execute a shell on the created image, simply run the command below.
```
docker run \
    -v $(pwd)/conf:/opt/gatling-charts-highcharts-bundle/conf \
    -v $(pwd)/user-files:/opt/gatling-charts-highcharts-bundle/user-files \
    -v $(pwd)/results:/opt/gatling-charts-highcharts-bundle/results \
    -it nextmetaphor/alpine-gatling sh
```

This will mount three volumes from the host machine onto the Docker container. Refer to the [Gatling documentation](http://gatling.io/docs/current/general/bundle_structure/) as to the purpose of each directory. Omit any of these volume mounts if not required.

* `$(pwd)/conf` will be mounted at `/opt/gatling-charts-highcharts-bundle/conf`. See the [Gatling configuration documentation](http://gatling.io/docs/current/general/configuration/) for more details.
* `$(pwd)/user-files` will be mounted at `/opt/gatling-charts-highcharts-bundle/user-files`. See the [Gatling simulation structure documentation](http://gatling.io/docs/current/general/simulation_structure/) for more details.
* `$(pwd)/results` will be mounted at `/opt/gatling-charts-highcharts-bundle/results`. See the [Gatling reports documentation](http://gatling.io/docs/current/general/reports/) for more details.

## Validation
TODO

## Licence ##
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.