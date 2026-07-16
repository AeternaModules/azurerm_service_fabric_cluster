output "service_fabric_clusters_id" {
  description = "Map of id values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_fabric_clusters_add_on_features" {
  description = "Map of add_on_features values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.add_on_features if v.add_on_features != null && length(v.add_on_features) > 0 }
}
output "service_fabric_clusters_azure_active_directory" {
  description = "Map of azure_active_directory values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.azure_active_directory if v.azure_active_directory != null && length(v.azure_active_directory) > 0 }
}
output "service_fabric_clusters_certificate" {
  description = "Map of certificate values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "service_fabric_clusters_certificate_common_names" {
  description = "Map of certificate_common_names values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.certificate_common_names if v.certificate_common_names != null && length(v.certificate_common_names) > 0 }
}
output "service_fabric_clusters_client_certificate_common_name" {
  description = "Map of client_certificate_common_name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.client_certificate_common_name if v.client_certificate_common_name != null && length(v.client_certificate_common_name) > 0 }
}
output "service_fabric_clusters_client_certificate_thumbprint" {
  description = "Map of client_certificate_thumbprint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.client_certificate_thumbprint if v.client_certificate_thumbprint != null && length(v.client_certificate_thumbprint) > 0 }
}
output "service_fabric_clusters_cluster_code_version" {
  description = "Map of cluster_code_version values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.cluster_code_version if v.cluster_code_version != null && length(v.cluster_code_version) > 0 }
}
output "service_fabric_clusters_cluster_endpoint" {
  description = "Map of cluster_endpoint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.cluster_endpoint if v.cluster_endpoint != null && length(v.cluster_endpoint) > 0 }
}
output "service_fabric_clusters_diagnostics_config" {
  description = "Map of diagnostics_config values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.diagnostics_config if v.diagnostics_config != null && length(v.diagnostics_config) > 0 }
}
output "service_fabric_clusters_fabric_settings" {
  description = "Map of fabric_settings values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.fabric_settings if v.fabric_settings != null && length(v.fabric_settings) > 0 }
}
output "service_fabric_clusters_location" {
  description = "Map of location values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "service_fabric_clusters_management_endpoint" {
  description = "Map of management_endpoint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.management_endpoint if v.management_endpoint != null && length(v.management_endpoint) > 0 }
}
output "service_fabric_clusters_name" {
  description = "Map of name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_fabric_clusters_node_type" {
  description = "Map of node_type values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "service_fabric_clusters_reliability_level" {
  description = "Map of reliability_level values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reliability_level if v.reliability_level != null && length(v.reliability_level) > 0 }
}
output "service_fabric_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "service_fabric_clusters_reverse_proxy_certificate" {
  description = "Map of reverse_proxy_certificate values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reverse_proxy_certificate if v.reverse_proxy_certificate != null && length(v.reverse_proxy_certificate) > 0 }
}
output "service_fabric_clusters_reverse_proxy_certificate_common_names" {
  description = "Map of reverse_proxy_certificate_common_names values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reverse_proxy_certificate_common_names if v.reverse_proxy_certificate_common_names != null && length(v.reverse_proxy_certificate_common_names) > 0 }
}
output "service_fabric_clusters_service_fabric_zonal_upgrade_mode" {
  description = "Map of service_fabric_zonal_upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.service_fabric_zonal_upgrade_mode if v.service_fabric_zonal_upgrade_mode != null && length(v.service_fabric_zonal_upgrade_mode) > 0 }
}
output "service_fabric_clusters_tags" {
  description = "Map of tags values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "service_fabric_clusters_upgrade_mode" {
  description = "Map of upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.upgrade_mode if v.upgrade_mode != null && length(v.upgrade_mode) > 0 }
}
output "service_fabric_clusters_upgrade_policy" {
  description = "Map of upgrade_policy values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.upgrade_policy if v.upgrade_policy != null && length(v.upgrade_policy) > 0 }
}
output "service_fabric_clusters_vm_image" {
  description = "Map of vm_image values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.vm_image if v.vm_image != null && length(v.vm_image) > 0 }
}
output "service_fabric_clusters_vmss_zonal_upgrade_mode" {
  description = "Map of vmss_zonal_upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.vmss_zonal_upgrade_mode if v.vmss_zonal_upgrade_mode != null && length(v.vmss_zonal_upgrade_mode) > 0 }
}

