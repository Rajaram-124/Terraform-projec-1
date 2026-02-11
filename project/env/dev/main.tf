
module "ec2" {
  source        = "../../modules/ec2"
  ami           = "ami-0002d0abb85b05cfa"
  instance_type = "t2.micro"
  name          = "dev-ec2"
  vpc_security_group_ids = [module.sg.sg_id] 

}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "achuthan-tf-dev-bucket-12345"
}
module "sg" {
  source              = "../../modules/sg"
  name                = "dev-ec2-sg"
  description         = "SG for dev EC2"
  vpc_id              = data.aws_vpc.selected.id
  # Replace with your VPC ID
  ingress_from_port   = 22
  ingress_to_port     = 22
  ingress_protocol    = "tcp"
  ingress_cidr_blocks = ["0.0.0.0/0"]
}
