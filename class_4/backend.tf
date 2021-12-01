terraform {
  backend "s3" {
    bucket = "terraformclassfour"
    key    = "pathto/key"
    region = "eu-west-1"
  }
}