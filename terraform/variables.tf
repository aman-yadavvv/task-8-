variable "aws_region" {
  default = "us-east-1"
}

variable "app_name" {
  default = "strapi-app"
}

variable "container_port" {
  default = 1337
}

variable "image_url" {
  type = string
}

variable "execution_role_arn" {
  type = string
}

variable "task_role_arn" {
  type    = string
  default = ""
}

variable "subnets" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}
