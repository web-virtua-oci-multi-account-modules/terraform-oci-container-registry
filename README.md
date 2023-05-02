# OCI Container Registry for multiples accounts with Terraform module
* This module simplifies creating and configuring of Container Registry across multiple accounts on OCI

* Is possible use this module with one account using the standard profile or multi account using multiple profiles setting in the modules.

## Actions necessary to use this module:

* Criate file provider.tf with the exemple code below:
```hcl
provider "oci" {
  alias   = "alias_profile_a"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.ssh_private_key_path
  region           = var.region
}

provider "oci" {
  alias   = "alias_profile_b"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.ssh_private_key_path
  region           = var.region
}
```


## Features enable of Subnet configurations for this module:

- Container repository

## Usage exemples


### Create container registry

```hcl
module "registry_test" {
  source = "web-virtua-oci-multi-account-modules/container-repository/oci"

  name           = "tf-test"
  compartment_id = var.compartment_id
  readme_content = "Registry test"

  providers = {
    oci = oci.alias_profile_a
  }
}
```


## Variables

| Name | Type | Default | Required | Description | Options |
|------|-------------|------|---------|:--------:|:--------|
| compartment_id | `string` | `-` | yes | Compartment ID | `-` |
| name | `string` | `-` | yes | Container repository name | `-` |
| is_immutable | `bool` | `false` | no | If true, the images in repository will can be overwritern | `*`false <br> `*`true |
| is_public | `bool` | `false` | no | If true, the images in repository will are puclics | `*`false <br> `*`true |
| readme_content | `string` | `Container repository` | no | Description of the bucket | `-` |
| readme_format | `string` | `text/markdown` | no | Format to write readme to container repository | `-` |


## Resources

| Name | Type |
|------|------|
| [oci_artifacts_container_repository.create_container_repository](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/artifacts_container_repository) | resource |

## Outputs

| Name | Description |
|------|-------------|
| `repository` | Repository |
| `repository_id` | Repository ID |
