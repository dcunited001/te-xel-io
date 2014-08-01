---
title: "Headed To Silicon Valley"
author:
  name: "David Conner"
tags: "'silicon valley' redis meetup twitter"
---

# Data Structures in Redis

## twitter uses mainly two different list structures in redis

### Ziplist and Linked List

Question: how did you tune the size of the ziplist?
-


## Twitter also uses B-Tree's for quick filtering and searching

- filtering by time, etc

# Building a Redis Cluster

> Redis Cluster - creating a setup of multiple redis instances that's sharded basically

Twitter has about 100 projects using Cached Redis Clusters

To reduce network latency from additional hops, Twitter is using C++ with Fanagle libraries (?)
- when using JVM, additional network hops aren't nearly as large of a bottleneck as introducing another JVM process into the mix.

Twiitter made multiple attempts
- eventually created [Twemproxy](https://github.com/twitter/twemproxy)
- Two or more solutions, based on proxy style routing.
- having a centric view is extremely important in keeping everything in the right state (?)
  - but i thought this was difficult to do because it creates network lag?

# Gaining Data Insight

Logging every command is possible
- this data is preprocessed on the box in order to compress and reduce the proportion of network traffic it requires
- otherwise, data transmitted would require ~10% of the network connection, just to provide data that you may not need
- ...

# Scale And Predicatability

Scale demands Predicability => Deterministic == :)
- Tail latencies show! If doing 'fanouts' on your shards (map-reduce?) then a show shard means a slow step, which results in a bottleneck.

Deterministic Config is operationally important.
- Need to allocate resources above and beyond your expectations to ensure a single node in the service doesn't drag the rest of the service down

GC Spiral is one issue lots of teams are dealing with
- it causes bad lag and it's difficult to predict and control.

Twitter is Running Redis on [MesOS](https://mesos.apache.org/)

Doesn't recommended LUA scripting for high-performance applications
- this is because a node running a LUA script could slow down the rest of the nodes
  - and because you don't really have control over what a script is going to do
  - compares LUA scripting to Dynamic SQL
- a deployed script may be a better approach
  - this would place the control into the hands of the person deploying the service
  - can do benchmarking and profiling.
  - can use compilers

Her wishlish for Redis
- Memory Management
- Deployable (Lua) Scripts
- Multi-threading
  - if redis can do mutlithreading right, then ... it would be super awesome

Twitter Redis hosts usually have > 100 GB of memory
- they have >24 TB in Redis, total

# Push Computation to the Data

## The hardware reality makes it increasingly desirable to:

- compute before going to disk
- compute before going to the network
