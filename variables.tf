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
    platform_fault_domain                                  = optional(number) # Default: -1
    priority                                               = optional(string) # Default: "Regular"
    provision_vm_agent                                     = optional(bool)
    proximity_placement_group_id                           = optional(string)
    secure_boot_enabled                                    = optional(bool)
    max_bid_price                                          = optional(number) # Default: -1
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
    bypass_platform_safety_checks_on_user_schedule_enabled = optional(bool) # Default: false
    capacity_reservation_group_id                          = optional(string)
    extensions_time_budget                                 = optional(string) # Default: "PT1H30M"
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
        placement = optional(string) # Default: "CacheDisk"
      }))
      disk_encryption_set_id           = optional(string)
      disk_size_gb                     = optional(number)
      name                             = optional(string)
      secure_vm_disk_encryption_set_id = optional(string)
      security_encryption_type         = optional(string)
      storage_account_type             = optional(string)
      write_accelerator_enabled        = optional(bool) # Default: false
    })
    additional_capabilities = optional(object({
      hibernation_enabled = optional(bool) # Default: false
      ultra_ssd_enabled   = optional(bool) # Default: false
    }))
    admin_ssh_key = optional(list(object({
      public_key = string
      username   = string
    })))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    gallery_application = optional(list(object({
      automatic_upgrade_enabled                   = optional(bool) # Default: false
      configuration_blob_uri                      = optional(string)
      order                                       = optional(number) # Default: 0
      tag                                         = optional(string)
      treat_failure_as_deployment_failure_enabled = optional(bool) # Default: false
      version_id                                  = string
    })))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    os_image_notification = optional(object({
      timeout = optional(string) # Default: "PT15M"
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
      timeout = optional(string) # Default: "PT5M"
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
  # --- Unconfirmed validation candidates, derived from azurerm_linux_virtual_machine's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] !ok
  # path: name
  #   condition: length(value) > 0
  #   message:   [from computeValidate.VirtualMachineName: invalid when value == ""]
  #   source:    [from computeValidate.VirtualMachineName: invalid when value == ""]
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] len(v) > maxLength
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] !matched
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] !matched
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] !matched
  # path: name
  #   source:    [from computeValidate.VirtualMachineName] matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: admin_username
  #   source:    [from computeValidate.LinuxAdminUsername] !ok
  # path: admin_username
  #   condition: length(value) > 0
  #   message:   [from computeValidate.LinuxAdminUsername: invalid when value == ""]
  #   source:    [from computeValidate.LinuxAdminUsername: invalid when value == ""]
  # path: admin_username
  #   condition: length(value) <= 64
  #   message:   [from computeValidate.LinuxAdminUsername: invalid when len(value) > 64]
  #   source:    [from computeValidate.LinuxAdminUsername: invalid when len(value) > 64]
  # path: admin_username
  #   source:    [from computeValidate.LinuxAdminUsername] value == v
  # path: network_interface_ids[*]
  #   source:    [from commonids.ValidateNetworkInterfaceID] !ok
  # path: network_interface_ids[*]
  #   source:    [from commonids.ValidateNetworkInterfaceID] err != nil
  # path: os_managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] !ok
  # path: os_managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] err != nil
  # path: size
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: admin_password
  #   source:    [from computeValidate.LinuxAdminPassword] !ok
  # path: admin_password
  #   condition: length(value) > 0
  #   message:   [from computeValidate.LinuxAdminPassword: invalid when value == ""]
  #   source:    [from computeValidate.LinuxAdminPassword: invalid when value == ""]
  # path: admin_password
  #   source:    [from computeValidate.LinuxAdminPassword] len(v) < 6 || len(v) > 72
  # path: admin_password
  #   source:    [from computeValidate.LinuxAdminPassword] value == v
  # path: admin_password
  #   source:    [from computeValidate.LinuxAdminPassword] conditions < 3
  # path: availability_set_id
  #   source:    [from commonids.ValidateAvailabilitySetID] !ok
  # path: availability_set_id
  #   source:    [from commonids.ValidateAvailabilitySetID] err != nil
  # path: capacity_reservation_group_id
  #   source:    [from capacityreservationgroups.ValidateCapacityReservationGroupID] !ok
  # path: capacity_reservation_group_id
  #   source:    [from capacityreservationgroups.ValidateCapacityReservationGroupID] err != nil
  # path: computer_name
  #   source:    computeValidate.LinuxComputerNameFull: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: custom_data
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: dedicated_host_id
  #   source:    [from commonids.ValidateDedicatedHostID] !ok
  # path: dedicated_host_id
  #   source:    [from commonids.ValidateDedicatedHostID] err != nil
  # path: dedicated_host_group_id
  #   source:    [from commonids.ValidateDedicatedHostGroupID] !ok
  # path: dedicated_host_group_id
  #   source:    [from commonids.ValidateDedicatedHostGroupID] err != nil
  # path: disk_controller_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: edge_zone
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: eviction_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: extensions_time_budget
  #   source:    azValidate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: license_type
  #   condition: contains(["RHEL_BYOS", "RHEL_BASE", "RHEL_EUS", "RHEL_SAPAPPS", "RHEL_SAPHA", "RHEL_BASESAPAPPS", "RHEL_BASESAPHA", "SLES_BYOS", "SLES_SAP", "SLES_HPC", "UBUNTU_PRO"], value)
  #   message:   must be one of: RHEL_BYOS, RHEL_BASE, RHEL_EUS, RHEL_SAPAPPS, RHEL_SAPHA, RHEL_BASESAPAPPS, RHEL_BASESAPHA, SLES_BYOS, SLES_SAP, SLES_HPC, UBUNTU_PRO
  # path: max_bid_price
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
  # path: priority
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: patch_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: patch_assessment_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: proximity_placement_group_id
  #   source:    [from proximityplacementgroups.ValidateProximityPlacementGroupID] !ok
  # path: proximity_placement_group_id
  #   source:    [from proximityplacementgroups.ValidateProximityPlacementGroupID] err != nil
  # path: reboot_setting
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: source_image_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: virtual_machine_scale_set_id
  #   source:    [from commonids.ValidateVirtualMachineScaleSetID] !ok
  # path: virtual_machine_scale_set_id
  #   source:    [from commonids.ValidateVirtualMachineScaleSetID] err != nil
  # path: platform_fault_domain
  #   condition: value >= -1
  #   message:   must be at least -1
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: user_data
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: zone
  #   condition: length(value) > 0
  #   message:   must not be empty
}

