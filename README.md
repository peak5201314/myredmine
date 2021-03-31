# Redmine Docker

![](https://libs.websoft9.com/common/websott9-cloud-installer.png) 

## Introduction

[English](/README.md) | [简体中文](/README-zh.md)  

This repository is an **Cloud Native solution** powered by [Websoft9](https://www.websoft9.com) to for installing [Redmine](https://github.com/docker-library/redmine) and pre-configure required items automatically and users only need to run a command on Linux. It simplifies the complicated installation and initialization process.  

## System Requirements

The following are the minimal recommended requirements:

* **OS**: 64-bit Red Hat, CentOS, 64-bit Debian, Ubuntu or other compatible distributive with kernel version 3.8 or later
* **ARCH**: amd64
* **RAM**: 4 GB or more
* **CPU**: dual-core 2 GHz or higher
* **HDD**: at least 2 GB of free space
* **Swap file**: at least 2 GB
* **Docker version**: 1.9.0 or later

To learn more, refer to the [Recommended System Requirements](https://www.redmine.org/projects/redmine/wiki/RedmineInstall#Requirements): 

## Pre-Installation

If you have not install Docker and Docker-Compose, refer to the following commands to install it:

```
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
ln -sf /usr/local/bin/docker-compose  /usr/bin
```

## Installation

We assume that you are already familiar with Docker, and you can modify [docker-compose file](docker-compose.yml) by yourself

```
git clone --depth=1 https://github.com/Websoft9/docker-redminecommunityserver
cd docker-redminecommunityserver
docker-compose up -d
```

## Parameters

* **Services**: Redmine, MySQL5.7
* **Ports**: 9007 for Redmine, 9090 for phpMyAdmin, 3306 for MySQL

## Subscription

We have publish Redmine CommunityServer on major Cloud Platform, just [subscribe it](https://apps.websoft9.com/redmine) you can deployment it automatically and get our Enterprise Support to ensure high availability of applications.  

What you get with a Enterprise subscription?

* Knowledge: Answers and guidance from product experts
* Support: Everything you need for technical support, e.g Enable HTTPS, Upgrade guide
* Security: Security services and tools to protect your software

## Links

* [Documentation](https://support.websoft9.com/docs/redmine)
* [CHANGELOG](/CHANGELOG.md)
* [License](/License.md)

## FAQ

#### Do I need to change the password before docker-compose up?

Yes, you should modify all database password and application password at docker-compose file for production

#### What the default username and password?

Refer to comment area at the top of docker-compose file
