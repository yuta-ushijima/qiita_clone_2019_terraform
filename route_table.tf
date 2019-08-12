resource "aws_route_table" "qiita_clone_route_table" {
  route = [{
    cidr_block                = "0.0.0.0/0"
    egress_only_gateway_id    = ""
    gateway_id                = "igw-07b4ba2f6339b218d"
    instance_id               = ""
    ipv6_cidr_block           = ""
    nat_gateway_id            = ""
    network_interface_id      = ""
    transit_gateway_id        = ""
    vpc_peering_connection_id = ""
  }]
  vpc_id = "${aws_vpc.qiita_clone_2019_vpc.id}"
  tags = {
    "Name" = "qiita_clone_route_table"
  }
}
