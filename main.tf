provider "aws" {
  region = "${var.region}"
}

data "terraform_remote_state" "vpc" {
    backend = "s3"
    config {
        bucket = "${var.bucket_name}"
        key = "${var.s3_key}"
        region = "ap-southeast-2"
    }
}

resource "aws_instance" "web" {
    ami = "${var.ami}"
    instance_type = "t2.micro"
    subnet_id = "${element(split(",", data.terraform_remote_state.vpc.public_subnets), 0)}"
    tags = {
        Name = "MyWeb2"
    }
}
