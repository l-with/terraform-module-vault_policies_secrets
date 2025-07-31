# Terraform Modul vault_kv_policies_secrets

Terraform module for deploying Hashicorp Vault policies and optionally Key/Value secrets 

<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >= 3.8 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | >= 3.8 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [vault_kv_secret.kv_secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kv_secret) | resource |
| [vault_kv_secret_v2.kv_secret_v2](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kv_secret_v2) | resource |
| [vault_policy.policy_read](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.policy_write](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy_document.policy_document_read](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/policy_document) | data source |
| [vault_policy_document.policy_document_write](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/policy_document) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kv_version"></a> [kv\_version](#input\_kv\_version) | the KV secrets engine version to be used | `string` | `"1"` | no |
| <a name="input_mount"></a> [mount](#input\_mount) | the vault mount for the secret | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | the vault path inside the vault mount | `string` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | the name for the policies | `string` | n/a | yes |
| <a name="input_policy_read"></a> [policy\_read](#input\_policy\_read) | if the read policy should be created | `bool` | `true` | no |
| <a name="input_policy_read_capabilities"></a> [policy\_read\_capabilities](#input\_policy\_read\_capabilities) | the capabilities for the read policy | `list(string)` | <pre>[<br>  "read",<br>  "list"<br>]</pre> | no |
| <a name="input_policy_write"></a> [policy\_write](#input\_policy\_write) | if the write policy should be created | `bool` | `false` | no |
| <a name="input_policy_write_capabilities"></a> [policy\_write\_capabilities](#input\_policy\_write\_capabilities) | the capabilities for the write policy | `list(string)` | <pre>[<br>  "create",<br>  "update",<br>  "patch",<br>  "delete"<br>]</pre> | no |
| <a name="input_secret"></a> [secret](#input\_secret) | the secrets to be put in the vault path | `map(string)` | `{}` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_read_policy_id"></a> [read\_policy\_id](#output\_read\_policy\_id) | the id of the read policy |
| <a name="output_read_policy_name"></a> [read\_policy\_name](#output\_read\_policy\_name) | the name of the read policy |
| <a name="output_write_policy_id"></a> [write\_policy\_id](#output\_write\_policy\_id) | the id of the write policy |
| <a name="output_write_policy_name"></a> [write\_policy\_name](#output\_write\_policy\_name) | the name of the write policy |
<!-- END_TF_DOCS -->
