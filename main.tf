resource "vault_aws_auth_backend_cert" "aws_auth_backend_certs" {
  for_each = var.aws_auth_backend_certs

  aws_public_cert = each.value.aws_public_cert
  cert_name       = each.value.cert_name
  backend         = each.value.backend
  namespace       = each.value.namespace
  type            = each.value.type
}

