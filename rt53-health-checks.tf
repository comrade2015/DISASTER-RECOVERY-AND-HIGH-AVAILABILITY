# Route 53 Health Checks and Records
resource "aws_route53_health_check" "primary" {
  type = "HTTP"
  resource_path = "/"
  fqdn          = "primary.${var.app_name}.cloudpork.click"
  port          = 80
}

resource "aws_route53_health_check" "secondary" {
  type = "HTTP"
  resource_path = "/"
  fqdn          = "secondary.${var.app_name}.cloudpork.click"
  port          = 80
}

resource "aws_route53_record" "failover" {
  zone_id = "Z02666872KRBJXJIAD0VO"
  name    = "${var.app_name}.cloudpork.click"
  type    = "A"

  alias {
    name                   = module.alb.lb_dns_name
    zone_id                = module.alb.lb_zone_id
    evaluate_target_health = true
  }

  set_identifier = "primary"
  failover_routing_policy {
    type = "PRIMARY"
  }
}