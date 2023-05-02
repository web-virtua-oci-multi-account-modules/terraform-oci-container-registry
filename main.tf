resource "oci_artifacts_container_repository" "create_container_repository" {
  compartment_id = var.compartment_id
  display_name   = var.name
  is_immutable   = var.is_immutable
  is_public      = var.is_public

  readme {
    content = var.readme_content
    format  = var.readme_format
  }
}
