resource "aws_security_group_rule" "qiita_clone_2019_sg_outbound_rule" {
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  from_port         = 0
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
  protocol          = "-1"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "qiita_clone_2019_sg_inbound_role_for_http" {
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  from_port         = 80
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 80
  type              = "ingress"
}

resource "aws_security_group_rule" "qiita_clone_2019_sg_inbound_role_for_http_of_ipv6" {
  cidr_blocks = []
  from_port   = 80
  ipv6_cidr_blocks = [
    "::/0"
  ]
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 80
  type              = "ingress"
}

resource "aws_security_group_rule" "qiita_clone_2019_sg_inbound_role_for_ssh" {
  cidr_blocks = [
    "27.83.59.109/32",
    "0.0.0.0/0",
  ]
  from_port         = 22
  ipv6_cidr_blocks  = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "qiita_clone_2019_sg_inbound_rule_for_application_server" {
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  from_port         = 3000
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 3000
  type              = "ingress"
}

resource "aws_security_group_rule" "qiita_clone_2019_sg_inbound_rule_for_application_server_of_ipv6" {
  cidr_blocks = []
  from_port   = 3000
  ipv6_cidr_blocks = [
    "::/0"
  ]
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_sg.id}"
  self              = false
  to_port           = 3000
  type              = "ingress"
}



resource "aws_security_group_rule" "qiita_clone_2019_rds_security_group_outbound_rule" {
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  from_port         = 0
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
  protocol          = "-1"
  security_group_id = "${aws_security_group.qiita_clone_2019_rds_security_group.id}"
  self              = false
  to_port           = 0
  type              = "egress"
}
resource "aws_security_group_rule" "qiita_clone_2019_rds_security_group_inbound_rule_for_mysql" {
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  from_port         = 3306
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = "${aws_security_group.qiita_clone_2019_rds_security_group.id}"
  self              = false
  to_port           = 3306
  type              = "ingress"
}
