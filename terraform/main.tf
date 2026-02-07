variable "token" {
  description = "this is the token to login digitalocean"
}

variable "public_key" {
  description = "this is the public key to login VPS"
}

variable "minimal_vps" {
  description = "this is the minimal VPS size, 1 vCPU and 1 GB RAM"
}

variable "standard_vps" {
  description = "this is the standard VPS size, 1 vCPU and 2 GB RAM"
}

variable "highmem_vps" {
  description = "this is the high memory VPS size, 2 vCPU and 4 GB RAM"
}

variable "linux_image" {
  description = "this is the linux image to use for VPS"
}

variable "regionSingapore" {
  description = "this is the region to create VPS"
}
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.74.0"
    }
  }
}

provider "digitalocean" {
  # Configuration options
  token = var.token
}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "my_vps" {
  name    = "final-project-todo-vps"
  region  = var.regionSingapore
  size    = var.highmem_vps
  image   = var.linux_image
  ssh_keys = [ var.public_key ]
}

output "output_name" {
  value = [digitalocean_droplet.my_vps.ipv4_address]
}