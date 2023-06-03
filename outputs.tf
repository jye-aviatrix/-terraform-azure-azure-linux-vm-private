output "vm_name" {
  description = "VM Name"
  value = azurerm_linux_virtual_machine.this.name
}
output "private_ip" {
  description = "Private IP"
  value = azurerm_network_interface.this.private_ip_address
}

output "ssh" {
  description = "A shortcut for ssh command (assuming .pem extension)"
  value = "ssh -i ${split(".",basename(var.public_key_file))[0]}.pem ${var.admin_username}@${azurerm_network_interface.this.private_ip_address}"
}

output "instance_id" {
  description = "Instance ID"
  value = azurerm_linux_virtual_machine.this.id
}

output "network_interface_id" {
  description = "Network interface id (for used by add to load balancer backend pool using azurerm_network_interface_backend_address_pool_association)"
  value = azurerm_network_interface.this.id
}