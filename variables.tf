variable "environments" {
  description = <<EOT
Map of environments, attributes below
Required:
    - display_name
Optional:
    - stream_governance (block):
        - package (required)
EOT

  type = map(object({
    display_name = string
    stream_governance = optional(object({
      package = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

