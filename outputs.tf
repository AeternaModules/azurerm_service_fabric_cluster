output "service_fabric_clusters_id" {
  description = "Map of id values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.id }
}
output "service_fabric_clusters_add_on_features" {
  description = "Map of add_on_features values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.add_on_features }
}
output "service_fabric_clusters_azure_active_directory" {
  description = "Map of azure_active_directory values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.azure_active_directory }
}
output "service_fabric_clusters_certificate" {
  description = "Map of certificate values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.certificate }
}
output "service_fabric_clusters_certificate_common_names" {
  description = "Map of certificate_common_names values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.certificate_common_names }
}
output "service_fabric_clusters_client_certificate_common_name" {
  description = "Map of client_certificate_common_name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.client_certificate_common_name }
}
output "service_fabric_clusters_client_certificate_thumbprint" {
  description = "Map of client_certificate_thumbprint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.client_certificate_thumbprint }
}
output "service_fabric_clusters_cluster_code_version" {
  description = "Map of cluster_code_version values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.cluster_code_version }
}
output "service_fabric_clusters_cluster_endpoint" {
  description = "Map of cluster_endpoint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.cluster_endpoint }
}
output "service_fabric_clusters_diagnostics_config" {
  description = "Map of diagnostics_config values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.diagnostics_config }
}
output "service_fabric_clusters_fabric_settings" {
  description = "Map of fabric_settings values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.fabric_settings }
}
output "service_fabric_clusters_location" {
  description = "Map of location values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.location }
}
output "service_fabric_clusters_management_endpoint" {
  description = "Map of management_endpoint values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.management_endpoint }
}
output "service_fabric_clusters_name" {
  description = "Map of name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.name }
}
output "service_fabric_clusters_node_type" {
  description = "Map of node_type values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.node_type }
}
output "service_fabric_clusters_reliability_level" {
  description = "Map of reliability_level values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reliability_level }
}
output "service_fabric_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.resource_group_name }
}
output "service_fabric_clusters_reverse_proxy_certificate" {
  description = "Map of reverse_proxy_certificate values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reverse_proxy_certificate }
}
output "service_fabric_clusters_reverse_proxy_certificate_common_names" {
  description = "Map of reverse_proxy_certificate_common_names values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.reverse_proxy_certificate_common_names }
}
output "service_fabric_clusters_service_fabric_zonal_upgrade_mode" {
  description = "Map of service_fabric_zonal_upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.service_fabric_zonal_upgrade_mode }
}
output "service_fabric_clusters_tags" {
  description = "Map of tags values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.tags }
}
output "service_fabric_clusters_upgrade_mode" {
  description = "Map of upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.upgrade_mode }
}
output "service_fabric_clusters_upgrade_policy" {
  description = "Map of upgrade_policy values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.upgrade_policy }
}
output "service_fabric_clusters_vm_image" {
  description = "Map of vm_image values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.vm_image }
}
output "service_fabric_clusters_vmss_zonal_upgrade_mode" {
  description = "Map of vmss_zonal_upgrade_mode values across all service_fabric_clusters, keyed the same as var.service_fabric_clusters"
  value       = { for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : k => v.vmss_zonal_upgrade_mode }
}

