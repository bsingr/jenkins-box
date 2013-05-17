# Jenkins Box

Setup a VM with Jenkins ready to be used as a CI server for ruby development.

## Features

- Jenkins with port forwarding to port 8080
- RVM with MRI 2.0.0
- Backup and Versioning of Jenkins Configuration (Jobs + Plugins) using grunt-jenkins

## Getting Started

Ensure that the dependencies are setup and then just execute:

    ./bootstrap.sh

When everything went fine start yout VM:

    vagrant up

Then open your browser and visit jenkins:

    open http://localhost:8080

## Manage Jenkins configuration

After each time you made changes to the global Jenkins configuration, plugins or jobs just do:

    grunt jenkins-backup

This will backup all stuff to the jenkins-configuration folder. You may put it under version control, yay!

You can install jenkins configuration using:

    grunt jenkins-install

When you added / removed plugins you must restart Jenkins:

    open http://localhost:8080/safeRestart

## Dependencies

- Vagrant
- Ruby + Bundler
- Chef + Berkshelf
- Node + NPM

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt).
