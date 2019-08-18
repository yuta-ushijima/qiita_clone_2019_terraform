resource "aws_security_group" "qiita_clone_2019_sg" {
  name        = "qiita_clone_2019_sg"
  description = "qiita_clone_2019_sg"
  vpc_id = "${aws_vpc.qiita_clone_2019_vpc.id}"
}

resource "aws_security_group" "qiita_clone_2019_rds_security_group" {
  description = "qiita_clone_2019_rds_security_group"
  vpc_id = "${aws_vpc.qiita_clone_2019_vpc.id}"
}
