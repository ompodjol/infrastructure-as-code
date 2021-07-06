resource "aws_launch_template" "dev_web" {
  name_prefix   = "dev-web"
  image_id      =  var.instance_image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.dev_web.id ]
}
