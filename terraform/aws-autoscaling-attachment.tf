resource "aws_autoscaling_attachment" "dev_web" {
  autoscaling_group_name = aws_autoscaling_group.dev_web.id
  elb                    = aws_elb.dev_web.id
}

output "website" {
  value = aws_elb.dev_web.dns_name
  description = "The domain name of the load balancer, the gateway to access the Bitnami website"
}
         