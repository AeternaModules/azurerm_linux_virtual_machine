variable "linux_virtual_machines" {
  description = <<EOT
Map of linux_virtual_machines, attributes below
Required:
    - location
    - name
    - network_interface_ids
    - resource_group_name
    - size
    - os_disk (block):
        - caching (required)
        - diff_disk_settings (optional, block):
            - option (required)
            - placement (optional)
        - disk_encryption_set_id (optional)
        - disk_size_gb (optional)
        - name (optional)
        - secure_vm_disk_encryption_set_id (optional)
        - security_encryption_type (optional)
        - storage_account_type (optional)
        - write_accelerator_enabled (optional)
Optional:
    - admin_password
    - admin_username
    - allow_extension_operations
    - availability_set_id
    - bypass_platform_safety_checks_on_user_schedule_enabled
    - capacity_reservation_group_id
    - computer_name
    - custom_data
    - dedicated_host_group_id
    - dedicated_host_id
    - disable_password_authentication
    - disk_controller_type
    - edge_zone
    - encryption_at_host_enabled
    - eviction_policy
    - extensions_time_budget
    - license_type
    - max_bid_price
    - os_managed_disk_id
    - patch_assessment_mode
    - patch_mode
    - platform_fault_domain
    - priority
    - provision_vm_agent
    - proximity_placement_group_id
    - reboot_setting
    - secure_boot_enabled
    - source_image_id
    - tags
    - user_data
    - virtual_machine_scale_set_id
    - vm_agent_platform_updates_enabled
    - vtpm_enabled
    - zone
    - additional_capabilities (block):
        - hibernation_enabled (optional)
        - ultra_ssd_enabled (optional)
    - admin_ssh_key (block):
        - public_key (required)
        - username (required)
    - boot_diagnostics (block):
        - storage_account_uri (optional)
    - gallery_application (block):
        - automatic_upgrade_enabled (optional)
        - configuration_blob_uri (optional)
        - order (optional)
        - tag (optional)
        - treat_failure_as_deployment_failure_enabled (optional)
        - version_id (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - os_image_notification (block):
        - timeout (optional)
    - plan (block):
        - name (required)
        - product (required)
        - publisher (required)
    - secret (block):
        - certificate (required, block):
            - url (required)
        - key_vault_id (required)
    - source_image_reference (block):
        - offer (required)
        - publisher (required)
        - sku (required)
        - version (required)
    - termination_notification (block):
        - enabled (required)
        - timeout (optional)
EOT

  type = map(object({
    location                                               = string
    name                                                   = string
    network_interface_ids                                  = list(string)
    resource_group_name                                    = string
    size                                                   = string
    os_managed_disk_id                                     = optional(string)
    patch_assessment_mode                                  = optional(string)
    patch_mode                                             = optional(string)
    platform_fault_domain                                  = optional(number, -1)
    priority                                               = optional(string, "Regular")
    provision_vm_agent                                     = optional(bool)
    proximity_placement_group_id                           = optional(string)
    secure_boot_enabled                                    = optional(bool)
    max_bid_price                                          = optional(number, -1)
    source_image_id                                        = optional(string)
    tags                                                   = optional(map(string))
    user_data                                              = optional(string)
    virtual_machine_scale_set_id                           = optional(string)
    vm_agent_platform_updates_enabled                      = optional(bool)
    reboot_setting                                         = optional(string)
    license_type                                           = optional(string)
    eviction_policy                                        = optional(string)
    vtpm_enabled                                           = optional(bool)
    admin_password                                         = optional(string)
    admin_username                                         = optional(string)
    allow_extension_operations                             = optional(bool)
    availability_set_id                                    = optional(string)
    bypass_platform_safety_checks_on_user_schedule_enabled = optional(bool, false)
    capacity_reservation_group_id                          = optional(string)
    extensions_time_budget                                 = optional(string, "PT1H30M")
    computer_name                                          = optional(string)
    dedicated_host_group_id                                = optional(string)
    dedicated_host_id                                      = optional(string)
    disable_password_authentication                        = optional(bool)
    disk_controller_type                                   = optional(string)
    edge_zone                                              = optional(string)
    encryption_at_host_enabled                             = optional(bool)
    custom_data                                            = optional(string)
    zone                                                   = optional(string)
    os_disk = object({
      caching = string
      diff_disk_settings = optional(object({
        option    = string
        placement = optional(string, "CacheDisk")
      }))
      disk_encryption_set_id           = optional(string)
      disk_size_gb                     = optional(number)
      name                             = optional(string)
      secure_vm_disk_encryption_set_id = optional(string)
      security_encryption_type         = optional(string)
      storage_account_type             = optional(string)
      write_accelerator_enabled        = optional(bool, false)
    })
    additional_capabilities = optional(object({
      hibernation_enabled = optional(bool, false)
      ultra_ssd_enabled   = optional(bool, false)
    }))
    admin_ssh_key = optional(object({
      public_key = string
      username   = string
    }))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    gallery_application = optional(list(object({
      automatic_upgrade_enabled                   = optional(bool, false)
      configuration_blob_uri                      = optional(string)
      order                                       = optional(number, 0)
      tag                                         = optional(string)
      treat_failure_as_deployment_failure_enabled = optional(bool, false)
      version_id                                  = string
    })))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    os_image_notification = optional(object({
      timeout = optional(string, "PT15M")
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    secret = optional(object({
      certificate = object({
        url = string
      })
      key_vault_id = string
    }))
    source_image_reference = optional(object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }))
    termination_notification = optional(object({
      enabled = bool
      timeout = optional(string, "PT5M")
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.gallery_application == null || (length(v.gallery_application) <= 100)
      )
    ])
    error_message = "Each gallery_application list must contain at most 100 items"
  }
}

