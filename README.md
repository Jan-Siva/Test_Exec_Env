# Test_Exec_Env

Clone the repository such that it lies inline with the behat tests directory

To build the test execution site run `vagrant up`

To rebuild the site without removing the VM run `vagrant provision`

## What is included

- LAMP Server
- Imagemagick
- php5-imagick extension
- phantomjs as ubuntu service

This should enable you to run screenshot comparison tests or perform layout testing

##Prerequisites

Install vagrant and virtual box. Follow instructions [here](http://docs.vagrantup.com/v2/installation/index.html)

## How ?

* After cloning the repository, cd into it and run `vagrant up`
* Once the environment is setup, run `vagrant ssh` to get inside the VM
* `cd ../../vagrant/testsbehat3` to get inside the tests directory
* Phantomjs shouls already be running on port 8190
* Run your tests inside the virtual machine



