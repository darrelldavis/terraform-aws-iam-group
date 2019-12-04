variable "name" {
  description = "The group name. See https://www.terraform.io/docs/providers/aws/r/iam_group.html for name guidelines/rules."
  type        = string
}

variable "path" {
  description = "Path in which to create the group"
  type        = string
  default     = "/"
}

variable "policy_arn" {
  description = "The ARN of the policy you want to apply to the group"
  type        = string
}
