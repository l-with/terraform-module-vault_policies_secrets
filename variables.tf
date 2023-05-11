variable "mount" {
  description = "the vault mount for the secret"
  type        = string
}

variable "path" {
  description = "the vault path inside the vault mount"
  type        = string
}

variable "policy_name" {
  description = "the name for the policies"
  type        = string
}

variable "policy_read" {
  description = "if the read policy should be created"
  type        = bool
  default     = true
}

variable "policy_write" {
  description = "if the write policy should be created"
  type        = bool
  default     = false
}

variable "kv_version" {
  description = "the KV secrets engine version to be used"
  type        = string
  default     = "1"
  validation {
    condition     = contains(["1", "2"], var.kv_version)
    error_message = "the kv_version must be one of [1,2]"
  }
}

variable "secret" {
  description = "the secrets to be put in the vault path"
  type        = map(string)
  default     = {}
  sensitive   = true
}