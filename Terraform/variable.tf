variable "attribute" {
description = "Attribute for Dynamo DB"
#type        = [(map(string))]
default = [
    {
    name = "postcode_init"
    type = "N"
  }
  #  {
  #   name = "postcode_lowrange"
  #   type = "N"
  # }
  #  {
  #   name = "Nearest Office"
  #   type = "S"
  # },
  #  {
  #   name = "State"
  #   type = "S"
  # }
 ]
}

variable "dynamodb_name" {
description = "Nmae of the Dynamo DB Table"
type        = "string"
default = "postcode_lookup"
 }

variable "billing_mode" {
description = "Billing Mode DynamoDb"
type        = "string"
default = "PROVISIONED"
}

variable "read_capacity" {
description = "Read Capacity"
type        = "string"
default = "20"
}

variable "write_capacity" {
description = "Write Capacity"
type        = "string"
default = "20"
}

variable "hash_key" {
description = "Primary Key"
type        = "string"
default = "postcode_init"
}

variable "range_key" {
description = "Sort Key"
type        = "string"
default = "postcode_lowrange"
}

variable "ttl_enabled" {
  description = "Indicates whether ttl is enabled"
  # type        = "bool"
  default     = "false"
}

variable "ttl_attribute_name" {
  description = "The name of the table attribute to store the TTL timestamp in"
  type        = "string"
  default     = "TimeToExist"
}

variable "lambda_name" {
  type = "string"
  default = "lightspeed"
}
variable  "runtime" {
  type = "string"
  default = "python3.8"
}

variable "api_name" {
  type = "string"
  default = "lightspeed"
}

variable "method" {
  type = "string"
  default = "ANY"
}

variable "stage" {
  type = "string"
  default = "test"
}