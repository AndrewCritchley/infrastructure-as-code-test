#################################################################
# VARIABLES
#################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {
    default = "SomePublicPrivateKeyPairs"
}

#################################################################
# PROVIDERS
#################################################################

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "us-east-2"
}

resource "aws_instance" "dockerhost" {
    ami = "docker_host_ami"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"

    connection {
        user = "ubuntu"
        private_key = "${file(var.private_key_path)}"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo docker run -it hello-world"
        ]
    }
}

#################################################################
# OUTPUT
#################################################################

output "aws_instance_public_dns" {
    value = "${aws_instance.dockerhost.public_dns}"
}