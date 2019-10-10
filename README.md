# qiita_clone_2019_terraform
## 概要
学習用リポジトリです。

Terraformを使って、マネジメントコンソールで作成したインフラ構成をコード化しています。

基本的には、

```
$ terraform import <awsリソース>.<任意のID> <importに必要なidやあarnなど>
```

上記のterraform importを使って出力されたリソース情報をリファレンスを参考に各ファイルに記述しています。

### Terraform 公式リファレンス(AWS)
https://www.terraform.io/docs/providers/aws/

test
