# Getting started with 'packer'

## What is 'packer'?

cite from packer.io:
"Packer is a tool for creating identical machine images for multiple platforms from a single source configuration."

## What is this repo for?

Providing templates/scripts (for vagrant base boxes) for some linux distributions.

## Requirements
* [packer] (https://packer.io/)
* [virtualbox] (http://virtualbox.org)
* [vagrant] (http://vagrantup.com)

Tested under
* Linux (Debian 7 / Ubuntu 14.04)
* packer 0.8.2
* virtualbox 4.3.28
* vagrant 1.7.5

## Available templates

* server_base (Vagrant base boxes for server)
  * CentOS 6 (32bit, 64bit)
  * Debian 7 (32bit, 64bit)
  * Debian 8 (32bit, 64bit)
  * Ubuntu 14.04 (32bit, 64bit)
* desktop 
  * base (OVA Export)
    * Lubuntu 14.04 (32bit, 64bit)
    * Xubuntu 14.04 (32bit, 64bit)
  * vagrant (vagrant base boxes)
    * Lubuntu 14.04 (32bit, 64bit)
    * Xubuntu 14.04 (32bit, 64bit)
* advanced
  * LampX stack based on Debian 8 (32bit, 64bit)

## Run instructions

* install requirements
* switch to a subfolder (server_base, desktop/base, desktop/vagrant, advanced)
* run 'packer build JSONFILENAME.json'
