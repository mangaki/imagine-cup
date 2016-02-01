---
author: Ryan Lahfa
---

# Django place in Mangaki

Mangaki uses intensively Python throughout all of his code.
But, how do we leverage Python and Django in Mangaki?

We will answer this question in multiple sections to make you understand better the *why* and the *how*.

## Python

Python is a solid and well-known language in the landscape, used successfully by a huge number of companies and organizations.
This choice was also the most relevant for us as we are more seasoned with Python rather than a poor ES6 Node.js, we wanted also to get support from the battle tested Django framework.

## Django

Django is described as a "framework for perfectionists with deadlines", we find it to be really an empowering tool which get rid of all the boilerplate that we would encounter while developing Mangaki.

Django has also a lot of big users, like Pinterest or Instagram, even Facebook uses Django for various behind-the-scenes utilities, we feel that we are standing on the shoulders of giants when we use Django.

The natural consequence for this success is that we have [a bunch of Django packages available](http://awesome-django.com/) to make the development faster.

One incredible fact that set Django apart was *how good the documentation was actually!* The quality ensures that you will not spend time debugging Django code more than your own code.

## Mangaki

### Applications
Mangaki project uses three big Django applications (at the moment of writing):

* [Discourse](https://github.com/mangaki/mangaki/tree/master/mangaki/discourse) which setup the Discourse SSO for the forum.
* [IRL](https://github.com/mangaki/mangaki/tree/master/mangaki/irl) which manage real-life events that happens around the Mangaki community (press view, contests)
* [Mangaki](https://github.com/mangaki/mangaki/tree/master/mangaki/mangaki) which is the core of the web application

Django enables us:
* to use its own ORM which makes our life easier to model our data, we use PostgreSQL databases as SQL engine
* to create own admin commands to analyze the user data and apply our algorithms on it ([findneighbors.py](https://github.com/mangaki/mangaki/blob/master/mangaki/mangaki/management/commands/findneighbors.py) for example)
* to easily version control our database [with migrations](https://github.com/mangaki/mangaki/tree/master/mangaki/mangaki/migrations)

### Configuration

Every Mangaki instance is easily configured with a [secret.py](https://github.com/mangaki/mangaki/blob/master/mangaki/secret_template.py) file which contains secrets.

### Initial data feeding

We have [initial fixtures](https://github.com/mangaki/mangaki/tree/master/fixtures) which are loaded when a new Mangaki instance is provisioned.

### Notebooks

A nice side effect of using Python let us use IPython notebooks to [keep tracking of ideas](https://github.com/mangaki/mangaki/tree/master/notebooks) with a cool representation

### Deployment of development environment

We even have a Vagrantfile to create easy Mangaki instances with [Vagrant](https://www.vagrantup.com/) and [a provisioning folder](https://github.com/mangaki/mangaki/tree/master/provisioning) which contains a Ansible playbook
