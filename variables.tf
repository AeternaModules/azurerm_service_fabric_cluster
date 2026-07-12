variable "service_fabric_clusters" {
  description = <<EOT
Map of service_fabric_clusters, attributes below
Required:
    - location
    - management_endpoint
    - name
    - reliability_level
    - resource_group_name
    - upgrade_mode
    - vm_image
    - node_type (block):
        - application_ports (optional, block):
            - end_port (required)
            - start_port (required)
        - capacities (optional)
        - client_endpoint_port (required)
        - durability_level (optional)
        - ephemeral_ports (optional, block):
            - end_port (required)
            - start_port (required)
        - http_endpoint_port (required)
        - instance_count (required)
        - is_primary (required)
        - is_stateless (optional)
        - multiple_availability_zones (optional)
        - name (required)
        - placement_properties (optional)
        - reverse_proxy_endpoint_port (optional)
Optional:
    - add_on_features
    - cluster_code_version
    - service_fabric_zonal_upgrade_mode
    - tags
    - vmss_zonal_upgrade_mode
    - azure_active_directory (block):
        - client_application_id (required)
        - cluster_application_id (required)
        - tenant_id (required)
    - certificate (block):
        - thumbprint (required)
        - thumbprint_secondary (optional)
        - x509_store_name (required)
    - certificate_common_names (block):
        - common_names (required, block):
            - certificate_common_name (required)
            - certificate_issuer_thumbprint (optional)
        - x509_store_name (required)
    - client_certificate_common_name (block):
        - common_name (required)
        - is_admin (required)
        - issuer_thumbprint (optional)
    - client_certificate_thumbprint (block):
        - is_admin (required)
        - thumbprint (required)
    - diagnostics_config (block):
        - blob_endpoint (required)
        - protected_account_key_name (required)
        - queue_endpoint (required)
        - storage_account_name (required)
        - table_endpoint (required)
    - fabric_settings (block):
        - name (required)
        - parameters (optional)
    - reverse_proxy_certificate (block):
        - thumbprint (required)
        - thumbprint_secondary (optional)
        - x509_store_name (required)
    - reverse_proxy_certificate_common_names (block):
        - common_names (required, block):
            - certificate_common_name (required)
            - certificate_issuer_thumbprint (optional)
        - x509_store_name (required)
    - upgrade_policy (block):
        - delta_health_policy (optional, block):
            - max_delta_unhealthy_applications_percent (optional)
            - max_delta_unhealthy_nodes_percent (optional)
            - max_upgrade_domain_delta_unhealthy_nodes_percent (optional)
        - force_restart_enabled (optional)
        - health_check_retry_timeout (optional)
        - health_check_stable_duration (optional)
        - health_check_wait_duration (optional)
        - health_policy (optional, block):
            - max_unhealthy_applications_percent (optional)
            - max_unhealthy_nodes_percent (optional)
        - upgrade_domain_timeout (optional)
        - upgrade_replica_set_check_timeout (optional)
        - upgrade_timeout (optional)
EOT

  type = map(object({
    location                          = string
    management_endpoint               = string
    name                              = string
    reliability_level                 = string
    resource_group_name               = string
    upgrade_mode                      = string
    vm_image                          = string
    add_on_features                   = optional(set(string))
    cluster_code_version              = optional(string)
    service_fabric_zonal_upgrade_mode = optional(string)
    tags                              = optional(map(string))
    vmss_zonal_upgrade_mode           = optional(string)
    node_type = list(object({
      application_ports = optional(object({
        end_port   = number
        start_port = number
      }))
      capacities           = optional(map(string))
      client_endpoint_port = number
      durability_level     = optional(string) # Default: "Bronze"
      ephemeral_ports = optional(object({
        end_port   = number
        start_port = number
      }))
      http_endpoint_port          = number
      instance_count              = number
      is_primary                  = bool
      is_stateless                = optional(bool)
      multiple_availability_zones = optional(bool)
      name                        = string
      placement_properties        = optional(map(string))
      reverse_proxy_endpoint_port = optional(number)
    }))
    azure_active_directory = optional(object({
      client_application_id  = string
      cluster_application_id = string
      tenant_id              = string
    }))
    certificate = optional(object({
      thumbprint           = string
      thumbprint_secondary = optional(string)
      x509_store_name      = string
    }))
    certificate_common_names = optional(object({
      common_names = list(object({
        certificate_common_name       = string
        certificate_issuer_thumbprint = optional(string)
      }))
      x509_store_name = string
    }))
    client_certificate_common_name = optional(list(object({
      common_name       = string
      is_admin          = bool
      issuer_thumbprint = optional(string)
    })))
    client_certificate_thumbprint = optional(list(object({
      is_admin   = bool
      thumbprint = string
    })))
    diagnostics_config = optional(object({
      blob_endpoint              = string
      protected_account_key_name = string
      queue_endpoint             = string
      storage_account_name       = string
      table_endpoint             = string
    }))
    fabric_settings = optional(list(object({
      name       = string
      parameters = optional(map(string))
    })))
    reverse_proxy_certificate = optional(object({
      thumbprint           = string
      thumbprint_secondary = optional(string)
      x509_store_name      = string
    }))
    reverse_proxy_certificate_common_names = optional(object({
      common_names = list(object({
        certificate_common_name       = string
        certificate_issuer_thumbprint = optional(string)
      }))
      x509_store_name = string
    }))
    upgrade_policy = optional(object({
      delta_health_policy = optional(object({
        max_delta_unhealthy_applications_percent         = optional(number) # Default: 0
        max_delta_unhealthy_nodes_percent                = optional(number) # Default: 0
        max_upgrade_domain_delta_unhealthy_nodes_percent = optional(number) # Default: 0
      }))
      force_restart_enabled        = optional(bool)
      health_check_retry_timeout   = optional(string) # Default: "00:45:00"
      health_check_stable_duration = optional(string) # Default: "00:01:00"
      health_check_wait_duration   = optional(string) # Default: "00:00:30"
      health_policy = optional(object({
        max_unhealthy_applications_percent = optional(number) # Default: 0
        max_unhealthy_nodes_percent        = optional(number) # Default: 0
      }))
      upgrade_domain_timeout            = optional(string) # Default: "02:00:00"
      upgrade_replica_set_check_timeout = optional(string) # Default: "10675199.02:48:05.4775807"
      upgrade_timeout                   = optional(string) # Default: "12:00:00"
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_fabric_clusters : (
        length(v.certificate_common_names.common_names) >= 1
      )
    ])
    error_message = "Each common_names list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_fabric_clusters : (
        length(v.reverse_proxy_certificate_common_names.common_names) >= 1
      )
    ])
    error_message = "Each common_names list must contain at least 1 items"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_service_fabric_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
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
  # path: reliability_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: upgrade_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: service_fabric_zonal_upgrade_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: vmss_zonal_upgrade_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: azure_active_directory.tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: azure_active_directory.cluster_application_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: azure_active_directory.client_application_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: certificate_common_names.common_names.certificate_common_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: certificate_common_names.common_names.certificate_issuer_thumbprint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: certificate_common_names.x509_store_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: reverse_proxy_certificate_common_names.common_names.certificate_common_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: reverse_proxy_certificate_common_names.common_names.certificate_issuer_thumbprint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: reverse_proxy_certificate_common_names.x509_store_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_certificate_common_name.common_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_certificate_common_name.issuer_thumbprint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: upgrade_policy.health_check_retry_timeout
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.health_check_stable_duration
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.health_check_wait_duration
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.upgrade_domain_timeout
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.upgrade_replica_set_check_timeout
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.upgrade_timeout
  #   source:    serviceFabricValidate.UpgradeTimeout: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: upgrade_policy.health_policy.max_unhealthy_applications_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: upgrade_policy.health_policy.max_unhealthy_nodes_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: upgrade_policy.delta_health_policy.max_delta_unhealthy_applications_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: upgrade_policy.delta_health_policy.max_delta_unhealthy_nodes_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: upgrade_policy.delta_health_policy.max_upgrade_domain_delta_unhealthy_nodes_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: node_type.reverse_proxy_endpoint_port
  #   source:    validate.PortNumber: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: node_type.durability_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
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
}

