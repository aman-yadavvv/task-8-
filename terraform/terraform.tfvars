aws_region         = "us-east-1"
app_name           = "strapi-app"
image_url          = "811738710312.dkr.ecr.us-east-1.amazonaws.com/strapi-app:latest"
execution_role_arn = "arn:aws:iam::811738710312:role/ecs_fargate_taskRole"
task_role_arn      = "arn:aws:iam::811738710312:role/ecs_fargate_taskRole"
subnets            = ["subnet-04327601bce556fff"] 
vpc_id             = "vpc-00839e4e93ca60bbd"
