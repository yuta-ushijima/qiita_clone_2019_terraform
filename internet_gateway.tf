resource "aws_internet_gateway" "qiita_clone_2019_igw" {
  vpc_id = "${aws_vpc.qiita_clone_2019_vpc.id}"
  tags = {
    "Name" = "qiita_clone_2019_igw"
  }
}
