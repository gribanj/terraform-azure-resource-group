variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resource"
  default = {
    "createdby" = "griban"
    "workload"  = "v3"
  }
}
