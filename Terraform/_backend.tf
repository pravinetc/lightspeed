terraform {
    backend "s3"{
    region = "${var.region}"
    bucket = "${var.bucket}"
    key = "${var.key}"
    }
}