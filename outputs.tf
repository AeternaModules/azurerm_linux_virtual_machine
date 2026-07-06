output "linux_virtual_machines" {
  description = "All linux_virtual_machine resources"
  value       = azurerm_linux_virtual_machine.linux_virtual_machines
  sensitive   = true
}
output "linux_virtual_machines_additional_capabilities" {
  description = "List of additional_capabilities values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.additional_capabilities]
}
output "linux_virtual_machines_admin_password" {
  description = "List of admin_password values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.admin_password]
  sensitive   = true
}
output "linux_virtual_machines_admin_ssh_key" {
  description = "List of admin_ssh_key values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.admin_ssh_key]
}
output "linux_virtual_machines_admin_username" {
  description = "List of admin_username values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.admin_username]
}
output "linux_virtual_machines_allow_extension_operations" {
  description = "List of allow_extension_operations values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.allow_extension_operations]
}
output "linux_virtual_machines_availability_set_id" {
  description = "List of availability_set_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.availability_set_id]
}
output "linux_virtual_machines_boot_diagnostics" {
  description = "List of boot_diagnostics values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.boot_diagnostics]
}
output "linux_virtual_machines_bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "List of bypass_platform_safety_checks_on_user_schedule_enabled values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.bypass_platform_safety_checks_on_user_schedule_enabled]
}
output "linux_virtual_machines_capacity_reservation_group_id" {
  description = "List of capacity_reservation_group_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.capacity_reservation_group_id]
}
output "linux_virtual_machines_computer_name" {
  description = "List of computer_name values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.computer_name]
}
output "linux_virtual_machines_custom_data" {
  description = "List of custom_data values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.custom_data]
  sensitive   = true
}
output "linux_virtual_machines_dedicated_host_group_id" {
  description = "List of dedicated_host_group_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.dedicated_host_group_id]
}
output "linux_virtual_machines_dedicated_host_id" {
  description = "List of dedicated_host_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.dedicated_host_id]
}
output "linux_virtual_machines_disable_password_authentication" {
  description = "List of disable_password_authentication values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.disable_password_authentication]
}
output "linux_virtual_machines_disk_controller_type" {
  description = "List of disk_controller_type values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.disk_controller_type]
}
output "linux_virtual_machines_edge_zone" {
  description = "List of edge_zone values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.edge_zone]
}
output "linux_virtual_machines_encryption_at_host_enabled" {
  description = "List of encryption_at_host_enabled values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.encryption_at_host_enabled]
}
output "linux_virtual_machines_eviction_policy" {
  description = "List of eviction_policy values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.eviction_policy]
}
output "linux_virtual_machines_extensions_time_budget" {
  description = "List of extensions_time_budget values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.extensions_time_budget]
}
output "linux_virtual_machines_gallery_application" {
  description = "List of gallery_application values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.gallery_application]
}
output "linux_virtual_machines_identity" {
  description = "List of identity values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.identity]
}
output "linux_virtual_machines_license_type" {
  description = "List of license_type values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.license_type]
}
output "linux_virtual_machines_location" {
  description = "List of location values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.location]
}
output "linux_virtual_machines_max_bid_price" {
  description = "List of max_bid_price values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.max_bid_price]
}
output "linux_virtual_machines_name" {
  description = "List of name values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.name]
}
output "linux_virtual_machines_network_interface_ids" {
  description = "List of network_interface_ids values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.network_interface_ids]
}
output "linux_virtual_machines_os_disk" {
  description = "List of os_disk values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.os_disk]
}
output "linux_virtual_machines_os_image_notification" {
  description = "List of os_image_notification values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.os_image_notification]
}
output "linux_virtual_machines_os_managed_disk_id" {
  description = "List of os_managed_disk_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.os_managed_disk_id]
}
output "linux_virtual_machines_patch_assessment_mode" {
  description = "List of patch_assessment_mode values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.patch_assessment_mode]
}
output "linux_virtual_machines_patch_mode" {
  description = "List of patch_mode values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.patch_mode]
}
output "linux_virtual_machines_plan" {
  description = "List of plan values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.plan]
}
output "linux_virtual_machines_platform_fault_domain" {
  description = "List of platform_fault_domain values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.platform_fault_domain]
}
output "linux_virtual_machines_priority" {
  description = "List of priority values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.priority]
}
output "linux_virtual_machines_private_ip_address" {
  description = "List of private_ip_address values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.private_ip_address]
}
output "linux_virtual_machines_private_ip_addresses" {
  description = "List of private_ip_addresses values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.private_ip_addresses]
}
output "linux_virtual_machines_provision_vm_agent" {
  description = "List of provision_vm_agent values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.provision_vm_agent]
}
output "linux_virtual_machines_proximity_placement_group_id" {
  description = "List of proximity_placement_group_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.proximity_placement_group_id]
}
output "linux_virtual_machines_public_ip_address" {
  description = "List of public_ip_address values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.public_ip_address]
}
output "linux_virtual_machines_public_ip_addresses" {
  description = "List of public_ip_addresses values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.public_ip_addresses]
}
output "linux_virtual_machines_reboot_setting" {
  description = "List of reboot_setting values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.reboot_setting]
}
output "linux_virtual_machines_resource_group_name" {
  description = "List of resource_group_name values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.resource_group_name]
}
output "linux_virtual_machines_secret" {
  description = "List of secret values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.secret]
}
output "linux_virtual_machines_secure_boot_enabled" {
  description = "List of secure_boot_enabled values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.secure_boot_enabled]
}
output "linux_virtual_machines_size" {
  description = "List of size values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.size]
}
output "linux_virtual_machines_source_image_id" {
  description = "List of source_image_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.source_image_id]
}
output "linux_virtual_machines_source_image_reference" {
  description = "List of source_image_reference values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.source_image_reference]
}
output "linux_virtual_machines_tags" {
  description = "List of tags values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.tags]
}
output "linux_virtual_machines_termination_notification" {
  description = "List of termination_notification values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.termination_notification]
}
output "linux_virtual_machines_user_data" {
  description = "List of user_data values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.user_data]
}
output "linux_virtual_machines_virtual_machine_id" {
  description = "List of virtual_machine_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.virtual_machine_id]
}
output "linux_virtual_machines_virtual_machine_scale_set_id" {
  description = "List of virtual_machine_scale_set_id values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.virtual_machine_scale_set_id]
}
output "linux_virtual_machines_vm_agent_platform_updates_enabled" {
  description = "List of vm_agent_platform_updates_enabled values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.vm_agent_platform_updates_enabled]
}
output "linux_virtual_machines_vtpm_enabled" {
  description = "List of vtpm_enabled values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.vtpm_enabled]
}
output "linux_virtual_machines_zone" {
  description = "List of zone values across all linux_virtual_machines"
  value       = [for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : v.zone]
}

