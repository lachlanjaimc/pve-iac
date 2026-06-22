terraform {
  required_providers {
    terraform = {
    source  = "bpg/proxmox"
    version = ">= 0.110.0"
  }
}

provider "proxmox" {
  endpoint = ${{ secrets.PROXMOX_ENDPOINT }}
  username = ${{ secrets.PROXMOX_USERNAME }}
  password = ${{ secrets.PROXMOX_PASSWORD }}
  insecure = true
}

# if creating a user token, the user must be created first
resource "proxmox_virtual_environment_user" "user" {
  comment         = "Managed by Terraform"
  email           = "lachlan@pve"
  enabled         = true
  expiration_date = "2034-01-01T22:00:00Z"
  user_id         = "lachlan@pve"
}

resource "proxmox_user_token" "user_token" {
  comment         = "Managed by Terraform"
  expiration_date = "2033-01-01T22:00:00Z"
  token_name      = "tk1"
  user_id         = proxmox_virtual_environment_user.user.user_id
}