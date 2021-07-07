output "website" {
  value = aws_elb.dev_web.dns_name
  description = "The domain name of the load balancer, the gateway to access the Bitnami website"
}