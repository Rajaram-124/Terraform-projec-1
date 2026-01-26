
module "ec2" {
  source        = "../../modules/ec2"
  ami           = "ami-0002d0abb85b05cfa"
  instance_type = "t2.micro"
  name          = "dev-ec2"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "achuthan-tf-dev-bucket-12345"
}
