```bash
sudo apt install terraform
```

```bash
terraform init #in the current terraform file to create .terraform
```

```bash
terraform plan #will simulate the written code
```

```bash
terraform apply # will apply the written code
terraform apply -auto-approve # to bypass "yes to apply"
```

```Terraform
provider "aws" {
#   region = 

shared_config_files = ["/home/mmamdouh/.aws/config"]
shared_credentials_files = ["/home/mmamdouh/.aws/credentials"]
profile = "terraform_id"

 }
```