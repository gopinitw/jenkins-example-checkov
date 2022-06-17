provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5FFG5LKMUKET75A6"
  secret_key = "goVfp6Vi7fsY4QYZ0cQScf6F2lBa/rzsmmqL81cE"
}

resource "aws_instance" "example" {
  count           = "3"
  ami             = "ami-0b28dfc7adc325ef4"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "geego"
  tags = {
    Name = "geecount"
  }

}
