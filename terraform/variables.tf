variable "proxmox_endpoint" {
  description = "Proxmox API endpoint of the host"
  type        = string
  sensitive   = true
}

variable "proxmox_username" {
  description = "The user to interact with Proxmox API (needs realm)"
  type        = string
  sensitive   = true
}

variable "proxmox_username" {
  description = "The password of the user to interact with Proxmox API"
  type        = string
  sensitive   = true
}