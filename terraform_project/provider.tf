provider "aws" {
    region = "us-east-1"

    shared_config_files = ["/home/mmamdouh/.aws/config"]
    shared_credentials_files = ["/home/mmamdouh/.aws/credentials"]
    profile = "terraform_id"

}