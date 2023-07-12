variable "unique_name" {
  description = "Truefoundry deployment unique name"
  type        = string
}

#### Control Plane Components Database (truefoundry_db)

variable "truefoundry_db_ingress_security_group" {
  type        = string
  description = "SG allowed to connect to the database"
}

variable "truefoundry_db_subnet_ids" {
  type        = list(string)
  description = "List of subnets where the RDS database will be deployed"
}

variable "truefoundry_db_tier" {
  type        = string
  description = "Instance class for SQL DB"
}
variable "truefoundry_db_zone" {
  type        = string
  description = "Zone for SQL DB - This must match the region"
}

################################################################################
# Generic
################################################################################

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "region"
  type        = string
}

variable "project" {
  description = "GCP Project"
  type        = string
}


variable "truefoundry_db_enable_override" {
  description = "Enable override for truefoundry db name. You must pass truefoundry_db_override_name"
  type        = bool
  default     = false
}
variable "truefoundry_db_override_name" {
  description = "Override name for truefoundry db. truefoundry_db_enable_override must be set true"
  type        = string
  default     = ""
}

##### truefoundry

variable "truefoundry_s3_enable_override" {
  description = "Enable override for s3 bucket name. You must pass truefoundry_s3_override_name"
  type        = bool
  default     = false
}
variable "truefoundry_s3_override_name" {
  description = "Override name for s3 bucket. truefoundry_s3_enable_override must be set true"
  type        = string
  default     = ""
}

###### svcfoundry

variable "svcfoundry_s3_enable_override" {
  description = "Enable override for s3 bucket name. You must pass svcfoundry_s3_override_name"
  type        = bool
  default     = false
}
variable "svcfoundry_s3_override_name" {
  description = "Override name for s3 bucket. svcfoundry_s3_enable_override must be set true"
  type        = string
  default     = ""
}