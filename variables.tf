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
    - admin_password_key_vault_id (alternative to admin_password - read from Key Vault instead)
    - admin_password_key_vault_secret_name (alternative to admin_password - read from Key Vault instead)
    - admin_username
    - allow_extension_operations
    - availability_set_id
    - bypass_platform_safety_checks_on_user_schedule_enabled
    - capacity_reservation_group_id
    - computer_name
    - custom_data
    - custom_data_key_vault_id (alternative to custom_data - read from Key Vault instead)
    - custom_data_key_vault_secret_name (alternative to custom_data - read from Key Vault instead)
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
    platform_fault_domain                                  = optional(number)
    priority                                               = optional(string)
    provision_vm_agent                                     = optional(bool)
    proximity_placement_group_id                           = optional(string)
    secure_boot_enabled                                    = optional(bool)
    max_bid_price                                          = optional(number)
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
    admin_password_key_vault_id                            = optional(string)
    admin_password_key_vault_secret_name                   = optional(string)
    admin_username                                         = optional(string)
    allow_extension_operations                             = optional(bool)
    availability_set_id                                    = optional(string)
    bypass_platform_safety_checks_on_user_schedule_enabled = optional(bool)
    capacity_reservation_group_id                          = optional(string)
    extensions_time_budget                                 = optional(string)
    computer_name                                          = optional(string)
    dedicated_host_group_id                                = optional(string)
    dedicated_host_id                                      = optional(string)
    disable_password_authentication                        = optional(bool)
    disk_controller_type                                   = optional(string)
    edge_zone                                              = optional(string)
    encryption_at_host_enabled                             = optional(bool)
    custom_data                                            = optional(string)
    custom_data_key_vault_id                               = optional(string)
    custom_data_key_vault_secret_name                      = optional(string)
    zone                                                   = optional(string)
    os_disk = object({
      caching = string
      diff_disk_settings = optional(object({
        option    = string
        placement = optional(string)
      }))
      disk_encryption_set_id           = optional(string)
      disk_size_gb                     = optional(number)
      name                             = optional(string)
      secure_vm_disk_encryption_set_id = optional(string)
      security_encryption_type         = optional(string)
      storage_account_type             = optional(string)
      write_accelerator_enabled        = optional(bool)
    })
    additional_capabilities = optional(object({
      hibernation_enabled = optional(bool)
      ultra_ssd_enabled   = optional(bool)
    }))
    admin_ssh_key = optional(list(object({
      public_key = string
      username   = string
    })))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    gallery_application = optional(list(object({
      automatic_upgrade_enabled                   = optional(bool)
      configuration_blob_uri                      = optional(string)
      order                                       = optional(number)
      tag                                         = optional(string)
      treat_failure_as_deployment_failure_enabled = optional(bool)
      version_id                                  = string
    })))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    os_image_notification = optional(object({
      timeout = optional(string)
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    secret = optional(list(object({
      certificate = list(object({
        url = string
      }))
      key_vault_id = string
    })))
    source_image_reference = optional(object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }))
    termination_notification = optional(object({
      enabled = bool
      timeout = optional(string)
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
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.secret == null || alltrue([for item in v.secret : (length(item.certificate) >= 1)])
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.admin_username == null || (length(v.admin_username) <= 64)
      )
    ])
    error_message = "[from computeValidate.LinuxAdminUsername: invalid when len(value) > 64]"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.os_disk.disk_size_gb == null || (v.os_disk.disk_size_gb >= 0 && v.os_disk.disk_size_gb <= 4095)
      )
    ])
    error_message = "must be between 0 and 4095"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        length(v.size) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.admin_ssh_key == null || alltrue([for item in v.admin_ssh_key : (length(item.username) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.custom_data == null || (can(base64decode(v.custom_data)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.edge_zone == null || (length(v.edge_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.gallery_application == null || alltrue([for item in v.gallery_application : (item.tag == null || (length(item.tag) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.license_type == null || (contains(["RHEL_BYOS", "RHEL_BASE", "RHEL_EUS", "RHEL_SAPAPPS", "RHEL_SAPHA", "RHEL_BASESAPAPPS", "RHEL_BASESAPHA", "SLES_BYOS", "SLES_SAP", "SLES_HPC", "UBUNTU_PRO"], v.license_type))
      )
    ])
    error_message = "must be one of: RHEL_BYOS, RHEL_BASE, RHEL_EUS, RHEL_SAPAPPS, RHEL_SAPHA, RHEL_BASESAPAPPS, RHEL_BASESAPHA, SLES_BYOS, SLES_SAP, SLES_HPC, UBUNTU_PRO"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.max_bid_price == null || (v.max_bid_price >= -1.0)
      )
    ])
    error_message = "must be at least -1.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.source_image_reference == null || (length(v.source_image_reference.publisher) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.source_image_reference == null || (length(v.source_image_reference.offer) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.source_image_reference == null || (length(v.source_image_reference.sku) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.source_image_reference == null || (length(v.source_image_reference.version) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.platform_fault_domain == null || (v.platform_fault_domain >= -1)
      )
    ])
    error_message = "must be at least -1"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.os_image_notification == null || (v.os_image_notification.timeout == null || (contains(["PT15M"], v.os_image_notification.timeout)))
      )
    ])
    error_message = "must be one of: PT15M"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.user_data == null || (can(base64decode(v.user_data)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.linux_virtual_machines : (
        v.zone == null || (length(v.zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 63 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

