# Auto scaling Group
resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.app_lc.id
  vpc_zone_identifier  = module.vpc.public_subnets
  desired_capacity     = 2
  min_size             = 1
  max_size             = 3

  tag {
    key                 = "Name"
    value               = "${var.app_name}-asg"
    propagate_at_launch = true
  }
}
