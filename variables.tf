variable "aws_auth_backend_certs" {
  description = <<EOT
Map of aws_auth_backend_certs, attributes below
Required:
    - aws_public_cert
    - cert_name
Optional:
    - backend
    - namespace
    - type
EOT

  type = map(object({
    aws_public_cert = string
    cert_name       = string
    backend         = optional(string)
    namespace       = optional(string)
    type            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.aws_auth_backend_certs : (
        v.type == null || (contains(["pkcs7", "identity"], v.type))
      )
    ])
    error_message = "must be one of: \"pkcs7\", \"identity\""
  }
}

