#Exemplo de arquivo de configuração Terraform para criar uma instância EC2 na AWS:
# Provider configuration
provider "aws" {
  region = "us-west-2"
}

# Resource definition
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
#Exemplo de arquivo de configuração Terraform para criar um bucket S3 na AWS:
# Provider configuration
provider "aws" {
  region = "us-west-2"
}

# Resource definition
resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
}

#Exemplo de arquivo de configuração Terraform para criar um recurso Kubernetes no GCP:

# Provider configuration
provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}

# Resource definition
resource "google_container_cluster" "example" {
  name               = "example-cluster"
  location           = "us-central1"
  initial_node_count = 3

  node_config {
    machine_type = "n1-standard-1"
  }
}

# Exemplo de arquivo de configuração Terraform para criar uma máquina virtual no VMware:
# Provider configuration
provider "vsphere" {
  user           = "my-username"
  password       = "my-password"
  vsphere_server = "my-vsphere-server.example.com"
}

# Resource definition
resource "vsphere_virtual_machine" "example" {
  name             = "example-vm"
  resource_pool_id = "my-resource-pool-id"

  disk {
    label = "system"
    size  = 40
  }

  network_interface {
    network_id   = "my-network-id"
    adapter_type = "vmxnet3"
  }

  num_cpus = 2
  memory   = 4096
}

#exemplo de código Terraform que cria um balanceador de carga na AWS:
provider "aws" {
  region = "us-west-2"
}

resource "aws_lb" "example" {
  name               = "example-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-12345678", "subnet-23456789"]
  security_groups    = ["sg-12345678"]
}

resource "aws_lb_target_group" "example" {
  name     = "example-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-12345678"
}

resource "aws_lb_listener" "example" {
  load_balancer_arn  = aws_lb.example.arn
  port               = 80
  protocol           = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}
#Criando uma conta de armazenamento na Azure:
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "example-resource-group"
  location = "eastus"
}

resource "azurerm_storage_account" "sa" {
  name                     = "examplestorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
#Criando um bucket no Google Cloud Storage:
provider "google" {
  project = "example-project-id"
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name          = "example-bucket"
  location      = "us-central1"
  force_destroy = true

  versioning {
    enabled = true
  }

  labels = {
    environment = "dev"
  }
}




