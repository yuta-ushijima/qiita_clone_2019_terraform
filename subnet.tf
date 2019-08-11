resource "aws_subnet" "qiita_clone_2019_public_subnet" {
  availability_zone = "ap-northeast-1d"
  cidr_block        = "10.0.0.0/24"
  vpc_id            = "${aws_vpc.qiita_clone_2019_vpc.id}"
  tags = {
    "Name" = "qiita_clone_2019_public_subnet"
  }
}

resource "aws_subnet" "qiita_clone_2019_private_subnet" {
  availability_zone = "ap-northeast-1d"
  cidr_block        = "10.0.1.0/24"
  vpc_id            = "${aws_vpc.qiita_clone_2019_vpc.id}"
  tags = {
    "Name" = "qiita_clone_2019_private_subnet"
  }
}

resource "aws_subnet" "qiita_clone_2019_rds_subnet" {
  availability_zone = "ap-northeast-1a"
  cidr_block        = "10.0.2.0/24"
  vpc_id            = "${aws_vpc.qiita_clone_2019_vpc.id}"
  tags = {
    "Name" = "qiita_clone_2019_rds_subnet"
  }
}
