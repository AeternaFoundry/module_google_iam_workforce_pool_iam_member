variable "iam_workforce_pool_iam_members" {
  description = <<EOT
Map of iam_workforce_pool_iam_members, attributes below
Required:
    - member
    - role
    - workforce_pool_id
Optional:
    - location
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member            = string
    role              = string
    workforce_pool_id = string
    location          = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

