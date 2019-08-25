resource "aws_lb" "qiita-clone-2019-elb" {
  name               = "qiita-clone-2019-elb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [
    "${aws_security_group.qiita_clone_2019_sg.id}"
  ]
  subnets = [
    "${aws_subnet.qiita_clone_2019_public_subnet.id}",
    "${aws_subnet.qiita_clone_2019_rds_subnet.id}"
  ]

  enable_http2 = true

  enable_deletion_protection = false

  idle_timeout = 60

  ip_address_type = "ipv4"

}
