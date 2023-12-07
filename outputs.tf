output "internal_ip_address_instance1" {
  value = module.instance1.internal_vm_ip_address
}

output "external_ip_address_instance1" {
  value = module.instance1.external_vm_ip_address
}

output "internal_ip_address_instance2" {
  value = module.instance2.internal_vm_ip_address
}

output "external_ip_address_instance2" {
  value = module.instance2.external_vm_ip_address
}
