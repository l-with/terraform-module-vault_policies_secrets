data "vault_policy_document" "policy_document_read" {
  count = var.policy_read ? 1 : 0
  rule {
    description  = "allow read on path ${var.path}"
    path         = "${var.mount}/${var.path}"
    capabilities = var.policy_read_capabilities
  }
}

resource "vault_policy" "policy_read" {
  count  = var.policy_read ? 1 : 0
  name   = "${var.policy_name}_read"
  policy = data.vault_policy_document.policy_document_read[count.index].hcl
}

data "vault_policy_document" "policy_document_write" {
  count = var.policy_write ? 1 : 0
  rule {
    description  = "allow read on write ${var.path}"
    path         = "${var.mount}/${var.path}"
    capabilities = var.policy_write_capabilities
  }
}

resource "vault_policy" "policy_write" {
  count  = var.policy_write ? 1 : 0
  name   = "${var.policy_name}_write"
  policy = data.vault_policy_document.policy_document_write[count.index].hcl
}

resource "vault_kv_secret" "kv_secret" {
  count     = var.kv_version == "1" && length(var.secret) > 0 ? 1 : 0
  path      = "${var.mount}/${var.path}"
  data_json = jsonencode(var.secret)
}

resource "vault_kv_secret_v2" "kv_secret_v2" {
  count     = var.kv_version == "2" && length(var.secret) > 0 ? 1 : 0
  mount     = var.mount
  name      = var.path
  data_json = jsonencode(var.secret)
}
