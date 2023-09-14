#============================================= RG

variable "name" {
  description = "The name of the resource"
  type        = string
}

variable "location" {
  description = "The location of the resource"
  type        = string
  default     = "westus3"
}

#============================================= LOGIC

variable "create" {
  description = "Boolean flag to control whether a new resource should be created"
  type        = bool
  default     = false
}

#============================================= TAGS

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resource"
  default = {
    "owner"     = "devops"
    "terraform" = "true"
    "env"       = "prod"
  }
  validation {
    condition     = contains(["prod", "nonprod", "dev", "qa", "stg"], var.tags["env"])
    error_message = "ERROR: The 'env' tag value must be one of the following: 'prod', 'nonprod','qa', 'stg' or 'dev'."
  }
}
