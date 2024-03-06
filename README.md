# Dynamic Web-App CI/CD Pipeline with GitHub Actions

This repository contains the configuration files and scripts for setting up a Continuous Integration/Continuous Deployment (CI/CD) pipeline for a dynamic web application hosted on AWS. The pipeline is designed to automate the deployment process from code commit to production.

![CI/CD Pipeline Architecture](https://github.com/werkmanne/rentzone-github-action-terraform-project/blob/main/GitHub%20Action%20Pipeline.jpg "CI/CD Pipeline Architecture Diagram")

The application is deployed to AWS, leveraging services such as S3, CloudFront, RDS, ECS, and others, to ensure a scalable and resilient production environment.

## Getting Started

To use this CI/CD pipeline for your own application, follow the steps below:

### Prerequisites

- An AWS account with necessary permissions.
- A GitHub account with a repository for your web application.
- Basic knowledge of AWS services used in the architecture.

### Configuration

1. **AWS Services**: Configure your AWS services as per the architecture diagram.
2. **GitHub Secrets**: Set up the required AWS credentials and configurations as secrets in your GitHub repository settings.
3. **Workflow Files**: Update the `.github/workflows/main.yml` file with your specific build, test, and deployment commands.
