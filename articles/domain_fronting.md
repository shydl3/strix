---
date: 2018-07-11T10:58:08-04:00
description: "How it works"
featured_image: "/images/domain_fronting_featured.jpg"
tags: ["C&C"]
categories: "Security"
title: "Domain Fronting"
---

## Domain Fronting Breakdown

**Domain Fronting:** a technique of using different domain names on the same HTTPS connection.

Domain fronting popularized in 2010s when developers configure the mobile apps to connect to a "front" domain and forward the connections to developers' backend thereafter. This way, the developer could expand their backend to deal with growing traffic and new features without constantly having to release app updates.

On the other side, domain fronting allows malicious actors to use legitimate and high-reputation domains in the connection process. The legitimate domains often belongs to CDN providers although many providers has disallowed this method.

CDN network can be used to host multiple domains, and deliver the requested content from the nearest server to the user.



## HTTPS Tunneling

![domain_fronting](/images/domain_fronting_01.jpg)



DNS is like the phonebook of the Internet that returns you the corresponding IP with provided domain name. 

HTTPS traffic are encrypted, so an attack can hide an HTTPS request to a restricted site inside a TLS (Transport Layer Security, whose predecessor refers to SSL, Secure Sockets Layer) connection to an allowed site. This method is known as **HTTPS Tunneling**.

In other words, the attacker can exploit this by initiating a connection to a legitimate website that is allowed by the network's security policies. Within this connection, the attacker can include malicious requests to restricted sites. Because the connection is encrypted, the network security mechanisms may not be able to detect the malicious requests, as they appear to be part of the legitimate traffic to the allowed site.

In domain fronting, the process is the same but it will make an HTTPS request that appears to be from a different domain. It does so by mimicking the secondary domain’s DNS and TLS requests which makes it seem as though the user has connected from another domain. This method is popular as a means to evade online censorship and bypass restrictions.



## Defense

The best defense against domain fronting in an enterprise organization is a cloud-based SWG (Secure Web Gateway) service with unlimited TLS interception capacity. A secure web gateway (SWG) is a network security technology that sits between users and the internet to filter traffic and enforce acceptable use and security policies.



An SWG can detect mismatches between the TLS Server Name Indication (SNI) and the HTTPS host header, and get a warning about domain fronting.

SNI is an extension to the TLS protocol that allows a client to indicate the specific hostname it is attempting to connect to during the TLS handshake process.





reference: [https://www.malwarebytes.com/blog/news/2023/12/explained-domain-fronting]
