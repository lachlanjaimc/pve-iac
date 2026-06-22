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