provider "aws" {
  region = var.aws_region
}

resource "aws_ecs_cluster" "example" {
  name = var.cluster_name
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_ecs_task_definition" "example" {
  family = var.task_definition_name

  container_definitions = <<EOF
[
  {
    "name": "${var.container_name}",
    "image": "${var.container_image}",
    "memoryReservation": 64,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
EOF
}


resource "aws_ecs_service" "example" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.example.id
  task_definition = aws_ecs_task_definition.example.arn
  desired_count   = var.desired_count
}
