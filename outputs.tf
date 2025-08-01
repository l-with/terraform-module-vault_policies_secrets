output "read_policy_name" {
  description = "the name of the read policy"
  value       = var.policy_read ? vault_policy.policy_read[0].name : null
}

output "write_policy_name" {
  description = "the name of the write policy"
  value       = var.policy_write ? vault_policy.policy_write[0].name : null
}

output "read_policy_id" {
  description = "the id of the read policy"
  value       = var.policy_read ? vault_policy.policy_read[0].id : null
}

output "write_policy_id" {
  description = "the id of the write policy"
  value       = var.policy_write ? vault_policy.policy_write[0].id : null
}
