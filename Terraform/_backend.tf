terraform {
    backend "s3"{
    region = "ap-southeast-2"
    bucket = "lightspeed-pravin"
    key = "lightspeed-pravin"
    }
}