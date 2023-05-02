variable "compartment_id" {
  description = "Compartment ID"
  type        = string
}

variable "name" {
  description = "Container repository name"
  type        = string
}

variable "is_immutable" {
  description = "If true, the images in repository will can be overwritern"
  type        = bool
  default     = false
}

variable "is_public" {
  description = "If true, the images in repository will are puclics"
  type        = bool
  default     = false
}

variable "readme_content" {
  description = "Description of the bucket"
  type        = string
  default     = "Container repository"
}

variable "readme_format" {
  description = "Format to write readme to container repository"
  type        = string
  default     = "text/markdown"
}
