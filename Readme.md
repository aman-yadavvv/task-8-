# 🚀 Strapi Deployment on AWS ECS Fargate using Terraform & GitHub Actions

## 📌 Project Overview

This project demonstrates a complete CI/CD pipeline for deploying a Strapi application to AWS ECS Fargate, fully managed using Terraform and automated via GitHub Actions.

The entire infrastructure provisioning, Docker image build, ECR push, ECS task revision update, and service deployment are handled automatically through GitHub Actions.

---

## 🏗 Architecture

- Developer pushes code to main branch.
- GitHub Actions workflow is triggered.
- Docker image is built.
- Image is tagged with commit SHA.
- Image is pushed to Amazon ECR.
- Terraform updates ECS Task Definition.
- New revision is deployed to ECS Fargate automatically.

---

## 📂 Repository Structure

.
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Dockerfile
├── .dockerignore
└── README.md

---
## Create Strapi Inside app/

npx create-strapi-app@latest app --quickstart

## Terraform Structure (As Required)

terraform/
├── main.tf
├── variables.tf
└── outputs.tf

    main.tf
- ECS Cluster
- ECR Repository
- Task Definition (Fargate)
- ECS Service
   
    variables.tf
- AWS region
- App name
- Container port
- Image URL
    
    outputs.tf
- ECR repository URL
- ECS cluster name

### Initialize Terraform

```bash
terraform init
terraform apply


## 🔁 CI/CD Workflow

 .github/
│   └── workflows/
│       └── deploy.yml

✔ Configures AWS credentials
✔ Logs in to Amazon ECR
✔ Builds Docker image
✔ Tags image using commit SHA
✔ Pushes image to ECR
✔ Runs Terraform init
✔ Applies Terraform with updated image
✔ Creates new ECS task revision automatically
---

# Required GitHub Secrets

Repository → Settings → Secrets → Actions

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

## 📌 Conclusion

This project demonstrates production-level DevOps practices by combining:

Containerization
Cloud-native deployment
Infrastructure as Code
CI/CD automation
Immutable deployments
