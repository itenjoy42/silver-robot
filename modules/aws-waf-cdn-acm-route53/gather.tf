data "aws_route53_zone" "zone" {
  name         = var.domain-name
  private_zone = false
}

data "aws_lb" "web-alb" {
  name = var.alb-name
}

data "aws_acm_certificate" "cert" {
  domain         = var.domain-name
}