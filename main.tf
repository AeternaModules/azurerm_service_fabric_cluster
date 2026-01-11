resource "azurerm_service_fabric_cluster" "service_fabric_clusters" {
  for_each = var.service_fabric_clusters

  location                          = each.value.location
  management_endpoint               = each.value.management_endpoint
  name                              = each.value.name
  reliability_level                 = each.value.reliability_level
  resource_group_name               = each.value.resource_group_name
  upgrade_mode                      = each.value.upgrade_mode
  vm_image                          = each.value.vm_image
  add_on_features                   = each.value.add_on_features
  cluster_code_version              = each.value.cluster_code_version
  service_fabric_zonal_upgrade_mode = each.value.service_fabric_zonal_upgrade_mode
  tags                              = each.value.tags
  vmss_zonal_upgrade_mode           = each.value.vmss_zonal_upgrade_mode

  node_type {
    dynamic "application_ports" {
      for_each = each.value.node_type.application_ports != null ? [each.value.node_type.application_ports] : []
      content {
        end_port   = application_ports.value.end_port
        start_port = application_ports.value.start_port
      }
    }
    capacities           = each.value.node_type.capacities
    client_endpoint_port = each.value.node_type.client_endpoint_port
    durability_level     = each.value.node_type.durability_level
    dynamic "ephemeral_ports" {
      for_each = each.value.node_type.ephemeral_ports != null ? [each.value.node_type.ephemeral_ports] : []
      content {
        end_port   = ephemeral_ports.value.end_port
        start_port = ephemeral_ports.value.start_port
      }
    }
    http_endpoint_port          = each.value.node_type.http_endpoint_port
    instance_count              = each.value.node_type.instance_count
    is_primary                  = each.value.node_type.is_primary
    is_stateless                = each.value.node_type.is_stateless
    multiple_availability_zones = each.value.node_type.multiple_availability_zones
    name                        = each.value.node_type.name
    placement_properties        = each.value.node_type.placement_properties
    reverse_proxy_endpoint_port = each.value.node_type.reverse_proxy_endpoint_port
  }

  dynamic "azure_active_directory" {
    for_each = each.value.azure_active_directory != null ? [each.value.azure_active_directory] : []
    content {
      client_application_id  = azure_active_directory.value.client_application_id
      cluster_application_id = azure_active_directory.value.cluster_application_id
      tenant_id              = azure_active_directory.value.tenant_id
    }
  }

  dynamic "certificate" {
    for_each = each.value.certificate != null ? [each.value.certificate] : []
    content {
      thumbprint           = certificate.value.thumbprint
      thumbprint_secondary = certificate.value.thumbprint_secondary
      x509_store_name      = certificate.value.x509_store_name
    }
  }

  dynamic "certificate_common_names" {
    for_each = each.value.certificate_common_names != null ? [each.value.certificate_common_names] : []
    content {
      common_names {
        certificate_common_name       = certificate_common_names.value.common_names.certificate_common_name
        certificate_issuer_thumbprint = certificate_common_names.value.common_names.certificate_issuer_thumbprint
      }
      x509_store_name = certificate_common_names.value.x509_store_name
    }
  }

  dynamic "client_certificate_common_name" {
    for_each = each.value.client_certificate_common_name != null ? [each.value.client_certificate_common_name] : []
    content {
      common_name       = client_certificate_common_name.value.common_name
      is_admin          = client_certificate_common_name.value.is_admin
      issuer_thumbprint = client_certificate_common_name.value.issuer_thumbprint
    }
  }

  dynamic "client_certificate_thumbprint" {
    for_each = each.value.client_certificate_thumbprint != null ? [each.value.client_certificate_thumbprint] : []
    content {
      is_admin   = client_certificate_thumbprint.value.is_admin
      thumbprint = client_certificate_thumbprint.value.thumbprint
    }
  }

  dynamic "diagnostics_config" {
    for_each = each.value.diagnostics_config != null ? [each.value.diagnostics_config] : []
    content {
      blob_endpoint              = diagnostics_config.value.blob_endpoint
      protected_account_key_name = diagnostics_config.value.protected_account_key_name
      queue_endpoint             = diagnostics_config.value.queue_endpoint
      storage_account_name       = diagnostics_config.value.storage_account_name
      table_endpoint             = diagnostics_config.value.table_endpoint
    }
  }

  dynamic "fabric_settings" {
    for_each = each.value.fabric_settings != null ? [each.value.fabric_settings] : []
    content {
      name       = fabric_settings.value.name
      parameters = fabric_settings.value.parameters
    }
  }

  dynamic "reverse_proxy_certificate" {
    for_each = each.value.reverse_proxy_certificate != null ? [each.value.reverse_proxy_certificate] : []
    content {
      thumbprint           = reverse_proxy_certificate.value.thumbprint
      thumbprint_secondary = reverse_proxy_certificate.value.thumbprint_secondary
      x509_store_name      = reverse_proxy_certificate.value.x509_store_name
    }
  }

  dynamic "reverse_proxy_certificate_common_names" {
    for_each = each.value.reverse_proxy_certificate_common_names != null ? [each.value.reverse_proxy_certificate_common_names] : []
    content {
      common_names {
        certificate_common_name       = reverse_proxy_certificate_common_names.value.common_names.certificate_common_name
        certificate_issuer_thumbprint = reverse_proxy_certificate_common_names.value.common_names.certificate_issuer_thumbprint
      }
      x509_store_name = reverse_proxy_certificate_common_names.value.x509_store_name
    }
  }

  dynamic "upgrade_policy" {
    for_each = each.value.upgrade_policy != null ? [each.value.upgrade_policy] : []
    content {
      dynamic "delta_health_policy" {
        for_each = upgrade_policy.value.delta_health_policy != null ? [upgrade_policy.value.delta_health_policy] : []
        content {
          max_delta_unhealthy_applications_percent         = delta_health_policy.value.max_delta_unhealthy_applications_percent
          max_delta_unhealthy_nodes_percent                = delta_health_policy.value.max_delta_unhealthy_nodes_percent
          max_upgrade_domain_delta_unhealthy_nodes_percent = delta_health_policy.value.max_upgrade_domain_delta_unhealthy_nodes_percent
        }
      }
      force_restart_enabled        = upgrade_policy.value.force_restart_enabled
      health_check_retry_timeout   = upgrade_policy.value.health_check_retry_timeout
      health_check_stable_duration = upgrade_policy.value.health_check_stable_duration
      health_check_wait_duration   = upgrade_policy.value.health_check_wait_duration
      dynamic "health_policy" {
        for_each = upgrade_policy.value.health_policy != null ? [upgrade_policy.value.health_policy] : []
        content {
          max_unhealthy_applications_percent = health_policy.value.max_unhealthy_applications_percent
          max_unhealthy_nodes_percent        = health_policy.value.max_unhealthy_nodes_percent
        }
      }
      upgrade_domain_timeout            = upgrade_policy.value.upgrade_domain_timeout
      upgrade_replica_set_check_timeout = upgrade_policy.value.upgrade_replica_set_check_timeout
      upgrade_timeout                   = upgrade_policy.value.upgrade_timeout
    }
  }
}

