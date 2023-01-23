
## Overview

This Terraform code creates an ECS cluster named "example-cluster", an EC2 instance, a task definition for running a single container, and a service that runs the task definition on the cluster with a desired count of 1.

## Requirements
Terraform v0.14.0 or later
AWS account and credentials with appropriate permissions

## Usage
Clone the repository
Create a terraform.tfvars file in the root of the repository and set the values of the variables as appropriate.
```bash
Run
  terraform init
  terraform plan
  terraform apply
```
to download the AWS provider and initialize the backend
Run terraform plan to preview the changes that will be made
Run terraform apply to create the resources

## Inputs

| Name | Description     | Type                       |  Default     | Required                       | 
| :-------- | :------- | :-------------------------------- | :------- | :-------------------------------- |
| `ami_id`      | The ID of the AMI to use for the EC2 instance | string | `""` | yes |
| `aws_region`      | The AWS region to use | string | `""` | yes |
| `cluster_name`      | The name of the ECS cluster | string | `""` | yes |
| `container_image`      | The image to use for the container in the task definition | string | `""` | yes |
| `container_name`      | The name of the container in the task definition | string | `""` | yes |
| `desired_count`      | The desired number of tasks to run in the service | string | `""` | yes |
| `instance_name`      | The name of the EC2 instance | string | `""` | yes |
| `instance_type`      | The type of the ec2 instance | string | `""` | yes |
| `memory`      | The memory of the container | string | `""` | yes |
| `task_definition_name`      | The name of the task definition	 | string | `""` | yes |
| `service_name`      | The name of the service | string | `""` | yes |


## Outputs


| Name | Description     |
| :-------- | :------- | 
| `cluster_name`      | The name of the ECS cluster |
| `instance_id`      | The ID of the EC2 instance |
| `service_name`      |The name of the service | 
