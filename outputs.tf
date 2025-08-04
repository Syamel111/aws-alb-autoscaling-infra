output "alb_dns_name" {
  value       = aws_lb.app_lb.dns_name
  description = "Access your app via this ALB DNS name"
}

