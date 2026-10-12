output "aws_auth_backend_certs_id" {
  description = "Map of id values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no id are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aws_auth_backend_certs_aws_public_cert" {
  description = "Map of aws_public_cert values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no aws_public_cert are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.aws_public_cert if v.aws_public_cert != null && length(v.aws_public_cert) > 0 }
}
output "aws_auth_backend_certs_backend" {
  description = "Map of backend values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no backend are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "aws_auth_backend_certs_cert_name" {
  description = "Map of cert_name values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no cert_name are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.cert_name if v.cert_name != null && length(v.cert_name) > 0 }
}
output "aws_auth_backend_certs_namespace" {
  description = "Map of namespace values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no namespace are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "aws_auth_backend_certs_type" {
  description = "Map of type values across all aws_auth_backend_certs, keyed the same as var.aws_auth_backend_certs except keys with no type are omitted"
  value       = { for k, v in vault_aws_auth_backend_cert.aws_auth_backend_certs : k => v.type if v.type != null && length(v.type) > 0 }
}

