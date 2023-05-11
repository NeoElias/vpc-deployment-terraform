remote_state {
  backend = "s3"
  config = {
    bucket         = "tek-tf-tg-training-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}