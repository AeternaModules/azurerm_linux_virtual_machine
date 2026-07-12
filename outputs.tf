output "linux_virtual_machines_id" {
  description = "Map of id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.id }
}
output "linux_virtual_machines_additional_capabilities" {
  description = "Map of additional_capabilities values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.additional_capabilities }
}
output "linux_virtual_machines_admin_password" {
  description = "Map of admin_password values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_password }
  sensitive   = true
}
output "linux_virtual_machines_admin_ssh_key" {
  description = "Map of admin_ssh_key values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_ssh_key }
}
output "linux_virtual_machines_admin_username" {
  description = "Map of admin_username values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_username }
}
output "linux_virtual_machines_allow_extension_operations" {
  description = "Map of allow_extension_operations values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.allow_extension_operations }
}
output "linux_virtual_machines_availability_set_id" {
  description = "Map of availability_set_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.availability_set_id }
}
output "linux_virtual_machines_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.boot_diagnostics }
}
output "linux_virtual_machines_bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "Map of bypass_platform_safety_checks_on_user_schedule_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.bypass_platform_safety_checks_on_user_schedule_enabled }
}
output "linux_virtual_machines_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.capacity_reservation_group_id }
}
output "linux_virtual_machines_computer_name" {
  description = "Map of computer_name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.computer_name }
}
output "linux_virtual_machines_custom_data" {
  description = "Map of custom_data values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.custom_data }
  sensitive   = true
}
output "linux_virtual_machines_dedicated_host_group_id" {
  description = "Map of dedicated_host_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.dedicated_host_group_id }
}
output "linux_virtual_machines_dedicated_host_id" {
  description = "Map of dedicated_host_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.dedicated_host_id }
}
output "linux_virtual_machines_disable_password_authentication" {
  description = "Map of disable_password_authentication values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.disable_password_authentication }
}
output "linux_virtual_machines_disk_controller_type" {
  description = "Map of disk_controller_type values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.disk_controller_type }
}
output "linux_virtual_machines_edge_zone" {
  description = "Map of edge_zone values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.edge_zone }
}
output "linux_virtual_machines_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.encryption_at_host_enabled }
}
output "linux_virtual_machines_eviction_policy" {
  description = "Map of eviction_policy values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.eviction_policy }
}
output "linux_virtual_machines_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.extensions_time_budget }
}
output "linux_virtual_machines_gallery_application" {
  description = "Map of gallery_application values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.gallery_application }
}
output "linux_virtual_machines_identity" {
  description = "Map of identity values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.identity }
}
output "linux_virtual_machines_license_type" {
  description = "Map of license_type values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.license_type }
}
output "linux_virtual_machines_location" {
  description = "Map of location values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.location }
}
output "linux_virtual_machines_max_bid_price" {
  description = "Map of max_bid_price values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.max_bid_price }
}
output "linux_virtual_machines_name" {
  description = "Map of name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.name }
}
output "linux_virtual_machines_network_interface_ids" {
  description = "Map of network_interface_ids values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.network_interface_ids }
}
output "linux_virtual_machines_os_disk" {
  description = "Map of os_disk values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_disk }
}
output "linux_virtual_machines_os_image_notification" {
  description = "Map of os_image_notification values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_image_notification }
}
output "linux_virtual_machines_os_managed_disk_id" {
  description = "Map of os_managed_disk_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_managed_disk_id }
}
output "linux_virtual_machines_patch_assessment_mode" {
  description = "Map of patch_assessment_mode values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.patch_assessment_mode }
}
output "linux_virtual_machines_patch_mode" {
  description = "Map of patch_mode values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.patch_mode }
}
output "linux_virtual_machines_plan" {
  description = "Map of plan values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.plan }
}
output "linux_virtual_machines_platform_fault_domain" {
  description = "Map of platform_fault_domain values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.platform_fault_domain }
}
output "linux_virtual_machines_priority" {
  description = "Map of priority values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.priority }
}
output "linux_virtual_machines_private_ip_address" {
  description = "Map of private_ip_address values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.private_ip_address }
}
output "linux_virtual_machines_private_ip_addresses" {
  description = "Map of private_ip_addresses values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.private_ip_addresses }
}
output "linux_virtual_machines_provision_vm_agent" {
  description = "Map of provision_vm_agent values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.provision_vm_agent }
}
output "linux_virtual_machines_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.proximity_placement_group_id }
}
output "linux_virtual_machines_public_ip_address" {
  description = "Map of public_ip_address values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.public_ip_address }
}
output "linux_virtual_machines_public_ip_addresses" {
  description = "Map of public_ip_addresses values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.public_ip_addresses }
}
output "linux_virtual_machines_reboot_setting" {
  description = "Map of reboot_setting values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.reboot_setting }
}
output "linux_virtual_machines_resource_group_name" {
  description = "Map of resource_group_name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.resource_group_name }
}
output "linux_virtual_machines_secret" {
  description = "Map of secret values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.secret }
}
output "linux_virtual_machines_secure_boot_enabled" {
  description = "Map of secure_boot_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.secure_boot_enabled }
}
output "linux_virtual_machines_size" {
  description = "Map of size values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.size }
}
output "linux_virtual_machines_source_image_id" {
  description = "Map of source_image_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.source_image_id }
}
output "linux_virtual_machines_source_image_reference" {
  description = "Map of source_image_reference values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.source_image_reference }
}
output "linux_virtual_machines_tags" {
  description = "Map of tags values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.tags }
}
output "linux_virtual_machines_termination_notification" {
  description = "Map of termination_notification values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.termination_notification }
}
output "linux_virtual_machines_user_data" {
  description = "Map of user_data values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.user_data }
}
output "linux_virtual_machines_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.virtual_machine_id }
}
output "linux_virtual_machines_virtual_machine_scale_set_id" {
  description = "Map of virtual_machine_scale_set_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.virtual_machine_scale_set_id }
}
output "linux_virtual_machines_vm_agent_platform_updates_enabled" {
  description = "Map of vm_agent_platform_updates_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.vm_agent_platform_updates_enabled }
}
output "linux_virtual_machines_vtpm_enabled" {
  description = "Map of vtpm_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.vtpm_enabled }
}
output "linux_virtual_machines_zone" {
  description = "Map of zone values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.zone }
}

