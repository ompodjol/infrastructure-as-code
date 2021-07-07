resource "aws_autoscaling_group" "dev_web" {
  desired_capacity    = var.scaling_desired_capacity
  max_size            = var.scaling_max_size
  min_size            = var.scaling_min_size

  vpc_zone_identifier = [aws_default_subnet.default_az1.id, aws_default_subnet.default_az2.id]

  launch_template {
    id      = aws_launch_template.dev_web.id
    version = "$Latest"
  }
}