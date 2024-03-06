# Dynamic Web-App CI/CD Pipeline with GitHub Actions

This repository contains the configuration files and scripts for setting up a Continuous Integration/Continuous Deployment (CI/CD) pipeline for a dynamic web application hosted on AWS. The pipeline is designed to automate the deployment process from code commit to production.

![CI/CD Pipeline Architecture](https://github.com/werkmanne/rentzone-github-action-terraform-project/blob/main/GitHub%20Action%20Pipeline.jpg "CI/CD Pipeline Architecture Diagram")

# AWS Three-Tier VPC CI/CD Pipeline with GitHub Actions

This repository houses the infrastructure code and configuration for setting up a three-tier VPC on AWS, with accompanying CI/CD pipeline configurations for automated provisioning and deployment using GitHub Actions.

## Pipeline Steps Overview

The CI/CD pipeline includes the following stages:

1. **Configure AWS Credentials**: Set up AWS credentials to enable Terraform to interact with AWS services.
2. **Terraform Infrastructure**: Provision a three-tier VPC which includes:
   - 2 public subnets across two Availability Zones
   - 4 private subnets across two Availability Zones
   - NAT gateways for each public subnet
   - An Internet Gateway for public subnets
   - An RDS database instance
   - Amazon ECR and ECS setup
3. **Start Self-Hosted Runner**: Begin a self-hosted runner for more control over the build environment and resources.
4. **Create ECR**: Set up an Elastic Container Registry to store Docker images.
5. **Build and Push Docker Image**: Build a Docker image from the application code and push it to the ECR from the self-hosted instance.
6. **Export Environment Variables**: Save necessary environment variables to S3 buckets for secure and scalable access.
7. **Migrate MySQL Database**: Transfer an existing MySQL database to the newly provisioned RDS instance.

## Architecture Diagram

Add an architecture diagram here if available to visually represent the infrastructure and workflow.

## Getting Started

Follow these instructions to replicate the pipeline in your own environment.

### Prerequisites

- AWS Account with appropriate permissions
- Docker environment for building images
- GitHub Account with a repository for your application
- Terraform installed locally for testing

### Configuration

#### AWS Credentials

1. Add your AWS credentials as secrets in the GitHub repository:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

#### Terraform

1. Initialize your Terraform workspace which will set up the initial state and settings.
2. Apply the Terraform configurations to create the infrastructure.

#### Docker and ECR

1. Configure Docker in your self-hosted runner.
2. Log in to ECR using `aws ecr get-login-password` command.
3. Build your Docker image and tag it appropriately for ECR.
4. Push the Docker image to ECR.

#### S3 Environment Variables

1. Create a script to upload your environment variables to an S3 bucket.
2. Ensure your AWS credentials have the correct permissions to write to S3.

#### MySQL Migration with Flyway

1. Create a secure connection to your RDS instance.
2. Use database migration script to transfer your MySQL database to RDS.

## Usage

To initiate the pipeline, push your changes to the repository:

```bash
git add .
git commit -m "Feature implementation"
git push origin main
