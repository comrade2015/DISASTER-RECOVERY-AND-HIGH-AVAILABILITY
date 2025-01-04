# Launch Configuration
resource "aws_launch_configuration" "app_lc" {
  name          = "${var.app_name}-lc"
  image_id      = var.ami_id
  instance_type = var.instance_type
  security_groups = [
    aws_security_group.app_sg.id
  ]
}