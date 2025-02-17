# environment variables
region       = "us-west-1"
project_name = "rentzone"
environment  = "demo"

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"
private_data_subnet_az1_cidr = "10.0.4.0/24"
private_data_subnet_az2_cidr = "10.0.5.0/24"

# secrets manager variables
secrets_manager_secret_name = "rentzone-app-dev-secret"

# rds variables
multi_az_deployment          = "false"
database_instance_identifier = "demodb"
database_instance_class      = "db.t2.micro"
publicly_accessible          = "false"

# acm variables
domain_name       = "eta-oko.com"
alternative_names = "*.eta-oko.com"

# ecs variables
architecture = "X86_64"
image_name   = "rentzone"
image_tag    = "latest"

# route-53 variables
record_name = "www"
