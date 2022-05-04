variable "username"{
	default		="admin"
}

variable "create_random_password" {
  description = "Determines whether to create random password for RDS primary cluster"
  type        = bool
  default     = true
}

variable "random_password_length" {
  description = "Length of random password to create. Defaults to `10`"
  type        = number
  default     = 10
}

variable "master_password" {
  description = "Password for the master DB user. Note - when specifying a value here, 'create_random_password' should be set to `false`"
  type        = string
  default     = null
}
