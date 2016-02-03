---
author: Ryan Lahfa
---

# Django, the Web framework

## Python

Python is a solid and well-known language in the landscape, used successfully by a huge number of companies and organizations.
This choice was also the most relevant for us as it is our favorite language, for its readability and simplicity.

## Django

Django is described as a "framework for perfectionists with deadlines", it revealed to be an empowering tool which gets rid of all the boilerplate that we could encounter while developing Mangaki.

Django powers Pinterest or Instagram, and also Facebook for various behind-the-scenes utilities. As a natural consequence for this success, we have [a bunch of Django packages available](http://awesome-django.com/) to speed up the development. Also, a really good point of Django is its crystal clear documentation.

## Mangaki

### Applications

Mangaki project uses two big Django applications (at the moment of writing):

* [Mangaki](https://github.com/mangaki/mangaki/tree/master/mangaki/mangaki) which is the core of the web application
* [IRL](https://github.com/mangaki/mangaki/tree/master/mangaki/irl) which manages real-life matter that happens around the Mangaki community (partners and events)

Django enables us to:
* use its own ORM which makes our life easier to model our data, we use PostgreSQL databases as SQL engine
* create our own admin commands to analyze the user data and apply our algorithms on it ([findneighbors.py](https://github.com/mangaki/mangaki/blob/master/mangaki/mangaki/management/commands/findneighbors.py) for example)
* easily version control our database [with migrations](https://github.com/mangaki/mangaki/tree/master/mangaki/mangaki/migrations)

### Configuration

Every Mangaki instance is easily configured with a [secret.py](https://github.com/mangaki/mangaki/blob/master/mangaki/secret_template.py) file which contains sensible data.

### Initial data feeding

We have [initial fixtures](https://github.com/mangaki/mangaki/tree/master/fixtures) which are loaded when a new Mangaki instance is provisioned.

### Notebooks

A nice side effect of using Python let us use IPython notebooks to [keep tracking of ideas](https://github.com/mangaki/mangaki/tree/master/notebooks) with a cool representation.

### Deployment of development environment

We even have a Vagrantfile to create easy Mangaki instances with [Vagrant](https://www.vagrantup.com/) and [a provisioning folder](https://github.com/mangaki/mangaki/tree/master/provisioning) which contains a Ansible playbook
