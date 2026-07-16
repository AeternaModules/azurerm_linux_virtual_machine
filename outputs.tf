output "linux_virtual_machines_id" {
  description = "Map of id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "linux_virtual_machines_additional_capabilities" {
  description = "Map of additional_capabilities values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.additional_capabilities if v.additional_capabilities != null && length(v.additional_capabilities) > 0 }
}
output "linux_virtual_machines_admin_password" {
  description = "Map of admin_password values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_password if v.admin_password != null && length(v.admin_password) > 0 }
  sensitive   = true
}
output "linux_virtual_machines_admin_ssh_key" {
  description = "Map of admin_ssh_key values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_ssh_key if v.admin_ssh_key != null && length(v.admin_ssh_key) > 0 }
}
output "linux_virtual_machines_admin_username" {
  description = "Map of admin_username values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.admin_username if v.admin_username != null && length(v.admin_username) > 0 }
}
output "linux_virtual_machines_allow_extension_operations" {
  description = "Map of allow_extension_operations values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.allow_extension_operations if v.allow_extension_operations != null }
}
output "linux_virtual_machines_availability_set_id" {
  description = "Map of availability_set_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.availability_set_id if v.availability_set_id != null && length(v.availability_set_id) > 0 }
}
output "linux_virtual_machines_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.boot_diagnostics if v.boot_diagnostics != null && length(v.boot_diagnostics) > 0 }
}
output "linux_virtual_machines_bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "Map of bypass_platform_safety_checks_on_user_schedule_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.bypass_platform_safety_checks_on_user_schedule_enabled if v.bypass_platform_safety_checks_on_user_schedule_enabled != null }
}
output "linux_virtual_machines_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.capacity_reservation_group_id if v.capacity_reservation_group_id != null && length(v.capacity_reservation_group_id) > 0 }
}
output "linux_virtual_machines_computer_name" {
  description = "Map of computer_name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.computer_name if v.computer_name != null && length(v.computer_name) > 0 }
}
output "linux_virtual_machines_custom_data" {
  description = "Map of custom_data values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.custom_data if v.custom_data != null && length(v.custom_data) > 0 }
  sensitive   = true
}
output "linux_virtual_machines_dedicated_host_group_id" {
  description = "Map of dedicated_host_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.dedicated_host_group_id if v.dedicated_host_group_id != null && length(v.dedicated_host_group_id) > 0 }
}
output "linux_virtual_machines_dedicated_host_id" {
  description = "Map of dedicated_host_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.dedicated_host_id if v.dedicated_host_id != null && length(v.dedicated_host_id) > 0 }
}
output "linux_virtual_machines_disable_password_authentication" {
  description = "Map of disable_password_authentication values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.disable_password_authentication if v.disable_password_authentication != null }
}
output "linux_virtual_machines_disk_controller_type" {
  description = "Map of disk_controller_type values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.disk_controller_type if v.disk_controller_type != null && length(v.disk_controller_type) > 0 }
}
output "linux_virtual_machines_edge_zone" {
  description = "Map of edge_zone values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.edge_zone if v.edge_zone != null && length(v.edge_zone) > 0 }
}
output "linux_virtual_machines_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.encryption_at_host_enabled if v.encryption_at_host_enabled != null }
}
output "linux_virtual_machines_eviction_policy" {
  description = "Map of eviction_policy values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.eviction_policy if v.eviction_policy != null && length(v.eviction_policy) > 0 }
}
output "linux_virtual_machines_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.extensions_time_budget if v.extensions_time_budget != null && length(v.extensions_time_budget) > 0 }
}
output "linux_virtual_machines_gallery_application" {
  description = "Map of gallery_application values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.gallery_application if v.gallery_application != null && length(v.gallery_application) > 0 }
}
output "linux_virtual_machines_identity" {
  description = "Map of identity values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "linux_virtual_machines_license_type" {
  description = "Map of license_type values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "linux_virtual_machines_location" {
  description = "Map of location values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.location if v.location != null && length(v.location) > 0 }
}
output "linux_virtual_machines_max_bid_price" {
  description = "Map of max_bid_price values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.max_bid_price if v.max_bid_price != null }
}
output "linux_virtual_machines_name" {
  description = "Map of name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "linux_virtual_machines_network_interface_ids" {
  description = "Map of network_interface_ids values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.network_interface_ids if v.network_interface_ids != null && length(v.network_interface_ids) > 0 }
}
output "linux_virtual_machines_os_disk" {
  description = "Map of os_disk values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_disk if v.os_disk != null && length(v.os_disk) > 0 }
}
output "linux_virtual_machines_os_image_notification" {
  description = "Map of os_image_notification values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_image_notification if v.os_image_notification != null && length(v.os_image_notification) > 0 }
}
output "linux_virtual_machines_os_managed_disk_id" {
  description = "Map of os_managed_disk_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.os_managed_disk_id if v.os_managed_disk_id != null && length(v.os_managed_disk_id) > 0 }
}
output "linux_virtual_machines_patch_assessment_mode" {
  description = "Map of patch_assessment_mode values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.patch_assessment_mode if v.patch_assessment_mode != null && length(v.patch_assessment_mode) > 0 }
}
output "linux_virtual_machines_patch_mode" {
  description = "Map of patch_mode values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.patch_mode if v.patch_mode != null && length(v.patch_mode) > 0 }
}
output "linux_virtual_machines_plan" {
  description = "Map of plan values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "linux_virtual_machines_platform_fault_domain" {
  description = "Map of platform_fault_domain values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.platform_fault_domain if v.platform_fault_domain != null }
}
output "linux_virtual_machines_priority" {
  description = "Map of priority values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.priority if v.priority != null && length(v.priority) > 0 }
}
output "linux_virtual_machines_private_ip_address" {
  description = "Map of private_ip_address values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.private_ip_address if v.private_ip_address != null && length(v.private_ip_address) > 0 }
}
output "linux_virtual_machines_private_ip_addresses" {
  description = "Map of private_ip_addresses values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.private_ip_addresses if v.private_ip_addresses != null && length(v.private_ip_addresses) > 0 }
}
output "linux_virtual_machines_provision_vm_agent" {
  description = "Map of provision_vm_agent values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.provision_vm_agent if v.provision_vm_agent != null }
}
output "linux_virtual_machines_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.proximity_placement_group_id if v.proximity_placement_group_id != null && length(v.proximity_placement_group_id) > 0 }
}
output "linux_virtual_machines_public_ip_address" {
  description = "Map of public_ip_address values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.public_ip_address if v.public_ip_address != null && length(v.public_ip_address) > 0 }
}
output "linux_virtual_machines_public_ip_addresses" {
  description = "Map of public_ip_addresses values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.public_ip_addresses if v.public_ip_addresses != null && length(v.public_ip_addresses) > 0 }
}
output "linux_virtual_machines_reboot_setting" {
  description = "Map of reboot_setting values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.reboot_setting if v.reboot_setting != null && length(v.reboot_setting) > 0 }
}
output "linux_virtual_machines_resource_group_name" {
  description = "Map of resource_group_name values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "linux_virtual_machines_secret" {
  description = "Map of secret values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.secret if v.secret != null && length(v.secret) > 0 }
}
output "linux_virtual_machines_secure_boot_enabled" {
  description = "Map of secure_boot_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.secure_boot_enabled if v.secure_boot_enabled != null }
}
output "linux_virtual_machines_size" {
  description = "Map of size values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.size if v.size != null && length(v.size) > 0 }
}
output "linux_virtual_machines_source_image_id" {
  description = "Map of source_image_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.source_image_id if v.source_image_id != null && length(v.source_image_id) > 0 }
}
output "linux_virtual_machines_source_image_reference" {
  description = "Map of source_image_reference values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.source_image_reference if v.source_image_reference != null && length(v.source_image_reference) > 0 }
}
output "linux_virtual_machines_tags" {
  description = "Map of tags values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "linux_virtual_machines_termination_notification" {
  description = "Map of termination_notification values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.termination_notification if v.termination_notification != null && length(v.termination_notification) > 0 }
}
output "linux_virtual_machines_user_data" {
  description = "Map of user_data values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}
output "linux_virtual_machines_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.virtual_machine_id if v.virtual_machine_id != null && length(v.virtual_machine_id) > 0 }
}
output "linux_virtual_machines_virtual_machine_scale_set_id" {
  description = "Map of virtual_machine_scale_set_id values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.virtual_machine_scale_set_id if v.virtual_machine_scale_set_id != null && length(v.virtual_machine_scale_set_id) > 0 }
}
output "linux_virtual_machines_vm_agent_platform_updates_enabled" {
  description = "Map of vm_agent_platform_updates_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.vm_agent_platform_updates_enabled if v.vm_agent_platform_updates_enabled != null }
}
output "linux_virtual_machines_vtpm_enabled" {
  description = "Map of vtpm_enabled values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.vtpm_enabled if v.vtpm_enabled != null }
}
output "linux_virtual_machines_zone" {
  description = "Map of zone values across all linux_virtual_machines, keyed the same as var.linux_virtual_machines"
  value       = { for k, v in azurerm_linux_virtual_machine.linux_virtual_machines : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

