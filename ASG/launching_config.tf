

resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [ aws_security_group.allow_http.id ]
  associate_public_ip_address = true

  user_data = <<USER_DATA
#!/bin/bash
yum update
yum -y install nginx
echo "$(curl http://169.254.169.254/latest/meta-data/local-ipv4)" > /usr/share/nginx/html/index.html
chkconfig nginx on
service nginx start
  USER_DATA

  lifecycle {
    create_before_destroy = true
  }
}

