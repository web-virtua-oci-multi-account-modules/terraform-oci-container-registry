output "repository" {
  description = "Repository"
  value       = oci_artifacts_container_repository.create_container_repository
}

output "repository_id" {
  description = "Repository ID"
  value       = oci_artifacts_container_repository.create_container_repository.id
}
