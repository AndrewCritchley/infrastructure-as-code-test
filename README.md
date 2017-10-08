# infrastructure-as-code-test
A small test of using infrastructure as code and immutable infrastructure using packer, teraform and 

## Aim

To deploy an application to AWS that consists of servers for:

* EventStore (cluster)
* Docker host

And the following containers running in docker:

* A front end (that relies on the API)
* I second front end
* An API (Not exposed externally)
* nginx to act as reverse proxy against both front ends
* A console app that subscribes to a stream in EventStore and send an email when a new event is received *new events can just be added via the EventStore api for testing) 

To EC2 instances running docker swarm. All swarm workers will be provisioned using teraform and packer.
