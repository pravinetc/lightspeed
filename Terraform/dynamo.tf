resource "aws_dynamodb_table" "dynamodb-table" {
  name           = "${var.dynamodb_name}"
  billing_mode   = "${var.billing_mode}"
  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  hash_key       = "${var.hash_key}"
  # range_key      = ${var.range_key}
  attribute      = "${var.attribute}"

  # ttl {
  #   attribute_name = "${var.ttl_attribute_name}"
  #   enabled        = "${var.ttl_enabled}"
  # }
}


resource "aws_dynamodb_table_item" "postcode-NT" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "0"},
  "${var.range_key}": {"N": "0"},
  "State": {"S": "Northern Territory"},
  "postcode_highrange": {"N": "0999"},
  "NearestOffice" : {"S": "Brisbane"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-NSW" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "1"},
  "${var.range_key}": {"N": "1"},
  "State": {"S": "New South Wales"},
  "postcode_highrange": {"N": "1999"},
  "NearestOffice" : {"S": "Sydney"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-NSW1" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "2"},
  "${var.range_key}": {"N": "2"},
  "State": {"S": "New South Wales"},
  "postcode_highrange": {"N": "2999"},
  "NearestOffice" : {"S": "Sydney"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-Vic" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "3"},
  "${var.range_key}": {"N": "3"},
  "State": {"S": "Victoria"},
  "postcode_highrange": {"N": "3999"},
  "NearestOffice" : {"S": "Melbourne"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-QL" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "4"},
  "${var.range_key}": {"N": "4"},
  "State": {"S": "Queensland"},
  "postcode_highrange": {"N": "4999"},
  "NearestOffice" : {"S": "Sydney"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-SA" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "5"},
  "${var.range_key}": {"N": "5"},
  "State": {"S": "South Australia"},
  "postcode_highrange": {"N": "5999"},
  "NearestOffice" : {"S": "Melbourne"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-WA" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "6"},
  "${var.range_key}": {"N": "6"},
  "State": {"S": "South Australia"},
  "postcode_highrange": {"N": "6999"},
  "NearestOffice" : {"S": "Melbourne"}
}
ITEM
}

resource "aws_dynamodb_table_item" "postcode-TS" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "7"},
  "${var.range_key}": {"N": "7"},
  "State": {"S": "Tasmania"},
  "postcode_highrange": {"N": "7999"},
  "NearestOffice" : {"S": "Melbourne"}
}
ITEM
}


resource "aws_dynamodb_table_item" "postcode-Vic1" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "8"},
  "${var.range_key}": {"N": "8"},
  "State": {"S": "Victoria"},
  "postcode_highrange": {"N": "8999"},
  "NearestOffice" : {"S": "Melbourne"}
}
ITEM
}


resource "aws_dynamodb_table_item" "postcode-QL1" {
  table_name = "${aws_dynamodb_table.dynamodb-table.name}"
  hash_key   = "${aws_dynamodb_table.dynamodb-table.hash_key}"
  item = <<ITEM
{
  "${aws_dynamodb_table.dynamodb-table.hash_key}": {"N": "9"},
  "${var.range_key}": {"N": "9"},
  "State": {"S": "Queensland"},
  "postcode_highrange": {"N": "9999"},
  "NearestOffice" : {"S": "Brisbane"}
}
ITEM
}


