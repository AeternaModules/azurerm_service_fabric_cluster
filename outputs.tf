output "service_fabric_clusters" {
  description = "All service_fabric_cluster resources"
  value       = azurerm_service_fabric_cluster.service_fabric_clusters
}
output "service_fabric_clusters_add_on_features" {
  description = "List of add_on_features values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.add_on_features]
}
output "service_fabric_clusters_azure_active_directory" {
  description = "List of azure_active_directory values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.azure_active_directory]
}
output "service_fabric_clusters_certificate" {
  description = "List of certificate values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.certificate]
}
output "service_fabric_clusters_certificate_common_names" {
  description = "List of certificate_common_names values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.certificate_common_names]
}
output "service_fabric_clusters_client_certificate_common_name" {
  description = "List of client_certificate_common_name values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.client_certificate_common_name]
}
output "service_fabric_clusters_client_certificate_thumbprint" {
  description = "List of client_certificate_thumbprint values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.client_certificate_thumbprint]
}
output "service_fabric_clusters_cluster_code_version" {
  description = "List of cluster_code_version values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.cluster_code_version]
}
output "service_fabric_clusters_cluster_endpoint" {
  description = "List of cluster_endpoint values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.cluster_endpoint]
}
output "service_fabric_clusters_diagnostics_config" {
  description = "List of diagnostics_config values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.diagnostics_config]
}
output "service_fabric_clusters_fabric_settings" {
  description = "List of fabric_settings values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.fabric_settings]
}
output "service_fabric_clusters_location" {
  description = "List of location values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.location]
}
output "service_fabric_clusters_management_endpoint" {
  description = "List of management_endpoint values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.management_endpoint]
}
output "service_fabric_clusters_name" {
  description = "List of name values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.name]
}
output "service_fabric_clusters_node_type" {
  description = "List of node_type values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.node_type]
}
output "service_fabric_clusters_reliability_level" {
  description = "List of reliability_level values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.reliability_level]
}
output "service_fabric_clusters_resource_group_name" {
  description = "List of resource_group_name values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.resource_group_name]
}
output "service_fabric_clusters_reverse_proxy_certificate" {
  description = "List of reverse_proxy_certificate values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.reverse_proxy_certificate]
}
output "service_fabric_clusters_reverse_proxy_certificate_common_names" {
  description = "List of reverse_proxy_certificate_common_names values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.reverse_proxy_certificate_common_names]
}
output "service_fabric_clusters_service_fabric_zonal_upgrade_mode" {
  description = "List of service_fabric_zonal_upgrade_mode values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.service_fabric_zonal_upgrade_mode]
}
output "service_fabric_clusters_tags" {
  description = "List of tags values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.tags]
}
output "service_fabric_clusters_upgrade_mode" {
  description = "List of upgrade_mode values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.upgrade_mode]
}
output "service_fabric_clusters_upgrade_policy" {
  description = "List of upgrade_policy values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.upgrade_policy]
}
output "service_fabric_clusters_vm_image" {
  description = "List of vm_image values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.vm_image]
}
output "service_fabric_clusters_vmss_zonal_upgrade_mode" {
  description = "List of vmss_zonal_upgrade_mode values across all service_fabric_clusters"
  value       = [for k, v in azurerm_service_fabric_cluster.service_fabric_clusters : v.vmss_zonal_upgrade_mode]
}

