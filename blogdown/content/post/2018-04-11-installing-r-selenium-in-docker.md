---
title: Installing RSelenium in Docker
author: ~
date: '2018-04-11'
slug: installing-r-selenium-in-docker
categories: []
tags:
  - docker
  - RSelenium
  - R
  - Selenium
  - webscraping
subtitle: ''
---

# Introduction

Online there are a lot of instuctions for installing RSelenium, but I found that most of them were missing at least one step. A lot of assumptions were made that the user is a power user. I decided to make a list of instructions that have all of the steps needed. Do not skip any steps, this is the number one reason I find that my steps don't work....and about 75% of people who have used my steps have skipped steps because they decided the step wasn't necessary (most commonly re-booting the computer when told to). 

## Installing RSelenium with Docker

Instructions were followed from: [https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-docker.html#why-docker](https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-docker.html#why-docker). However, note that there is extra information in these instructions which may be confusing to people who aren't power users.

Method used for Windows:

Get [Docker toolbox for Windows](https://docs.docker.com/toolbox/toolbox_install_windows/)

Install Docker Toolbox

Reboot the computer

Go to the windows firewall on your computer, and add docker.exe and docker-machine.exe to programs allowed to access your private and public network traffic

Open Docker Quickstart Terminal

Note the IP address given when you start the Quickstart Terminal (for the future) usually 192.168.99.100

In the Docker Quickstart Terminal run the command `docker pull selenium/standalone-firefox` 

## Using RSelenium in R

If you haven't already, open Docker Quickstart Terminal

Run the image using `docker run -d -p 4445:4444 selenium/standalone-firefox`

In RStudio run the following code to make sure that the Docker RSelenium server is working
```
  library(RSelenium)
  remDr <- remoteDriver(remoteServerAddr = "192.168.99.100", port = 4445L)
  remDr$open()

  remDr$navigate("http://www.google.com/ncr")
  remDr$getTitle()
```

## Stopping Docker images when you are done

To stop all docker containers in the Quickstart Terminal you can use `docker stop $(docker ps -q)`
