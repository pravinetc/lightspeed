locals {
    env = {
        dev = {
            dynamodb_name  = "postcode_lookup"
            billing_mode   = "Provisioned"
            read_capacity  = "20"
            write_capacity = "20"
            hash_key       = "postcode_init"
            range_key      = "postcode_lowrange"
            attribute_name = "TimeToExist"
            enabled        = "false"
            attribute      = [
                {
                    name = "postcode_init"
                    type = "N"
                },
                {
                    name = "postcode_lowrange"
                    type = "N"
                },
                {
                    name = "Nearest Office"
                    type = "S"
                },
                {
                    name = "State"
                    type = "S"
                }
            ]
        }
    }
    workspace = "local.env[terraform.workspace]"
}