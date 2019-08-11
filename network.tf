resource "aws_vpc" "qiita_clone_2019_vpc" {
  // デフォルト値は記載せず定義必須なパラメータやデフォルト値から変更したパラメータを定義
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = false
  tags = {
    "Name" = "qiita_clone_2019_vpc"
  }
}