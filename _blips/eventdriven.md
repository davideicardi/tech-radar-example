---
title: Event Driven
quadrant: PATTERNS
ring: ADOPT
website: https://martinfowler.com/articles/201701-event-driven.html
moved: 0
categories: [architecture]
testimonials: [project2]
stack: [web]
---

An event-driven architecture uses events to trigger and communicate between decoupled services and is common in modern applications built with microservices. An event is a change in state, or an update, like an item being placed in a shopping cart on an e-commerce website. Events can either carry the state (the item purchased, its price, and a delivery address) or events can be identifiers (a notification that an order was shipped).

Event-driven architectures have three key components: event producers, event routers, and event consumers. A producer publishes an event to the router, which filters and pushes the events to consumers. Producer services and consumer services are decoupled, which allows them to be scaled, updated, and deployed independently.