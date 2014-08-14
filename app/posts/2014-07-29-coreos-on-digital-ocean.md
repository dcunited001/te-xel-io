---
title: "CoreOS on Digital Ocean"
author:
  name: "David Conner"
tags: "coreos docker linux ansible"
---

Something I've wanted to play around with for about 8 months now is [CoreOS](https://coreos.com/).  
IMO, CoreOS seems like the top contender for Linux in the cloud.  **CoreOS** is built on top of **Docker** and **etcd**.  

### Docker is great!  

However, it lacks the framework and configuration management tools that allow you to use Docker in 
the way it was meant to be used: to orchestrate nodes and containers, creating a beautiful, seamless cloud 
infrastructure.  Don't parse me wrong here: Docker does exactly what it should do and nothing more.  It sits
right in the Goldilocks region of that old Linux philosophy: 

> Do one thing and do one thing well!

Docker takes care of setting up Linux containers.  It shouldn't worry about configuration management.  If it did,
Docker would encroach on other open source projects' chance to innovate.

### Why not Deim, Flynn or Ansible?

So, I looked into several other projects

### TODO: describe Deim
### TODO: describe Flynn
### TODO: describe Ansible

### TODO: So how can I get started?
### TODO: So how do I load it on Digital Ocean

### Using the [coreos-on-do](https://github.com/ibuildthecloud/coreos-on-do) script

Intructions can be found in the github repo for the script, but I've included my experience here as well.

Created a new droplet from the base Ubuntu 14.04x64 image.  
- Selected the $20/month 2GB option and the NY2 Region.
- Ensured my SSH Key was selected for secure auth w/o password (as required by coreos-on-do and common sense)
- Left VirtIO enabled.  Also, I enabled Private Networking to ensure faster communication between nodes on NY2.

During my wait-time, I used DNSimple to create an A record for a domain under my control.
- I set the TTL to be 60 seconds to ensure this A record would be responsive quickly
- Then, I later set the TTL to a more respectful 600 seconds.

### Testing restore from snapshot

First, I tested power cycling the droplet, then SSH back in. This way I'd ensure that my time wasn't wasted on a snapshot if the config 
couldn't even hold across a power cycle for some reason.  

> Great Success.

Then, I powered off again to get a snapshot.  First, I tried powering off from the WebUI and this didn't work.
When I tried to grab the snapshot, I instead got `Action Did Not Complete` in bold red letters.  And only then, did I 
read `To take a snapshot please poweroff your droplet from the command line`.  

I elementary school, we sometimes had these assignments which strictly required you to read all instructions 
before starting on *any* questions, only to tell you at the end of the instructions that answering any of the 
questions would result in a zero.  Clearly, I failed these assignments. Anyways, moving on...

- Tried `sudo shutdown -h now`, but machine.won't.stay.dead!
- The machine seems to restart as soon as I turn it off.
- Need to create a Github issue for this.  Oh well.  Snapshots aren't a huge deal, but it would be nice to be able to 
  *automate* deployment of new CoreOS nodes on DigitalOcean.
  





 