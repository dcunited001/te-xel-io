---
title: "Graph Visualization with Linkurious"
author:
  name: "David Conner"
tags: ""
---

I went to another [tech meetup](http://www.meetup.com/graphdb-sf/events/186891552/) in SF, 
this time it was a presentation by Linkurious CEO Sébastien Heymann on using his product to 
store, search and visualize graphs.k

### Neo4J

[Neo4j](http://www.neo4j.org/) is a [Graph Database](http://en.wikipedia.org/wiki/Graph_database).  
Check out this article on Forbes to learn about [how graph databases are transforming 
online dating](http://www.forbes.com/sites/danwoods/2014/02/14/50-shades-of-graph-how-graph-databases-are-transforming-online-dating/)

Neo4j supports ACID transactions

### The Five Qeustions

1. What are the data?
2. What is the goal?
3. Who is your end-user?
4. What are the constraints?
5. How is it used?

### An example of the Five Questions:

A old videogame project that is based on a 5000+ node graph, where the nodes represent markets and the connections
between nodes represent trades ... 

### I'm creating a Neo4j graph database for my application.

- I define a data model
I generate a significant graph sample
I create a business query with Cypher
...

### An example User Story

An application collects tons of data points from network equipment: 
- 40-100 points per second
- measuring various stats from each interface
- from thousands of nodes

Data points such as
- interface speed
- interface status
- interface connections

We want to predict possible problems in the network by
- measuring relationships between equipment
- learning patterns in the graph

