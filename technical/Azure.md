---
author: Ryan Lahfa
---

# Azure usage in Mangaki

This section covers the deployment of Mangaki.

Azure enables a system to easily create virtual machines, which is an interesting point for us.

### Virtual machines

Before cloud hosting services started to exist, we would deploy our services with dedicated servers,
 provisioning them with different tools (Ansible, Chef, etc...) or provisioning them manually.

The main drawbacks with this solution were that:

* You could not spawn another web server instantly
* You could not detect changes on the production and deploy continuously automatically
* Your dedicated server had **fixed** resources and cannot grow
* You were responsible for the uptime of your **own** dedicated server

One could argue with fairly complex setups, you would get rid of most of those drawbacks, but fairly complex setups needs time and dedication.
Things that an organization do not have always, as a developer I prefer to focus on interesting challenges rather than system administration.

Now, Azure enters in the battlefield. Thanks to Azure, cloud hosting grants us new superpowers, I personally [love beautiful APIs](https://azure.microsoft.com/en-us/documentation/articles/api-management-get-started/).

Azure lets us spawn virtual machines on the fly or act on the infrastructure (advanced security policies with JSON Web Token) through a RESTful API, which is quite handy.

## How Mangaki uses Azure?

### How can we efficiently reassure ourselves that the Mangaki website will not crash due to a human failure?

As a developer, we all experienced this moment when... we crashed the production database, the production web server or *production whatever*.

This is definitely a wearing experience, because it teach you the value of your changes on the code, you need to value if this changes is going to make it on production, not only on your computer.

At Mangaki, we're all humans and we do a lot of mistakes while peer reviewing our code, we crashed the production a numerous times and this feels so wrong.
We wanted something that would let us do all the mistakes we want while letting our production website alive.

Azure is the key to enable this feature:

When we spawn virtual machines, we have a front NGINX web server which will serve our requests:

* api.mangaki.fr to the API server (for example)
* mangaki.fr to the production server
* research.mangaki.fr to the research server

The idea is to isolate our platform as different chunk of services, by doing this, we can enable NGINX to use the failover feature which is used like this:

```
upstream mangaki_production {
        server {{ main_mangaki_production_server_ip }};
        server {{ fallback_mangaki_production_server_ip }} backup;
}
```
And this is definitely awesome because we can connect a [confd-like](https://github.com/kelseyhightower/confd) to provision our NGINX config in real-time with the Azure API.

### How can we efficiently make contributors' life easier?

As open source service contributors, we want to test our new features before putting them in production, peer reviewing of the code is awesome.

But it is difficult to coordinate all the changes, we want a pipeline where we can aggregate a set of features, check their impact and push them to production.

Basically, we would like different environments of Mangaki but linked to a copy of the production database or a subset of the production database.

This is possible with Azure, we can dynamically spawn new routes in NGINX router or just aggregate them in a dev / staging environment, check the changes, talk about them with contributors, push them to production.

## Conclusion

Azure is really a powerful infrastructure which enables our organization to gain more agility by writing smart integrations, scripts and triggers in order to make our life easier and let us focus on the code.
