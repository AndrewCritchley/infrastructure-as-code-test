# infrastructure-as-code-test
A small test of using infrastructure as code and immutable infrastructure using packer, teraform and 

## Aim

To deploy an application to AWS that consists of:

* A front end (that relies on the API)
* I second front end
* An API (Not exposed externally)
* nginx to act as reverse proxy against both front ends

To EC2 instances running docker swarm. All swarm workers will be provisioned using teraform and packer.