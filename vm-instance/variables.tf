variable "project_name" {
    type        = string
    description = "The project assigned"

}

variable "path" {
    type        = string
    description = "The ssh key to install on the servers"
}

variable "region" {
  type        = string
  description = "The AWS region where this will be applied"
}