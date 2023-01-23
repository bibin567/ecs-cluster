variable "aws_region" {
  default = "eu-west-2"
}

variable "cluster_name" {
  default = "example-cluster"
}

variable "ami_id" {
  default = "ami-084e8c05825742534"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "example-instance"
}

variable "task_definition_name" {
  default = "example-task-definition"
}

variable "container_name" {
  default = "example-container"
}

variable "container_image" {
  default = "nginx:latest"
}

variable "service_name" {
  default = "example-service"
}

variable "desired_count" {
  default = 1
}
