aws_region    = "us-east-1"
aws_profile   = "default"
instance_ami  = "ami-0b72821e2f351e396"
instance_type = "t2.micro"
instance_tags = {
  Name    = "Doug Ubuntu Ec2"
  Project = "Project to release EC2"
  Env     = "Dev"
}