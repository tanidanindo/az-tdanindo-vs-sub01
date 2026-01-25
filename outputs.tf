output "assigned_ip_address" {
  value = module.public_ip.public_ip_address
}

output "created_resource" {
  value = module.public_ip.public_ip_id
}
