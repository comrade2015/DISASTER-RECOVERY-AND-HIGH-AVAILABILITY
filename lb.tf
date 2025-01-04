# Load Balancer
module "alb" {
  source = "terraform-aws-modules/alb/aws"

  name                    = "${var.app_name}-alb"
  internal                = false
  security_groups         = [aws_security_group.app_sg.id]
  subnets                 = module.vpc.public_subnets
  enable_deletion_protection = false
  idle_timeout            = 60
  vpc_id             = module.vpc.vpc_id

  target_groups = [
    {
      name             = "${var.app_name}-tg"
      backend_port     = 80
      backend_protocol = "HTTP"
    }
  ]
}