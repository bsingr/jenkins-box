# Vagrant Jenkins

Setup a VM with Jenkins ready to be used as a CI server for ruby development.

## Features

- Jenkins with port forwarding to port 8080
- RVM with MRI 2.0.0
- Backup and Versioning of Jenkins Configuration (Jobs + Plugins) using grunt-jenkins

## Getting Started

Ensure that the dependencies are setup and then just execute:

    ./bootstrap.sh

## Dependencies

- Vagrant
- Ruby + Bundler
- Chef + Berkshelf
- Node + NPM

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt).
