---
title: ES
longTitle: Event Sourcing
quadrant: PATTERNS
ring: ADOPT
website: https://martinfowler.com/eaaDev/EventSourcing.html
moved: 0
categories: [architecture]
testimonials: [project1]
---

We can query an application's state to find out the current state of the world, and this answers many questions. However there are times when we don't just want to see where we are, we also want to know how we got there.

Event Sourcing ensures that all changes to application state are stored as a sequence of events. Not just can we query these events, we can also use the event log to reconstruct past states, and as a foundation to automatically adjust the state to cope with retroactive changes.
