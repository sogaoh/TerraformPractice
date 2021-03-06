# aws-01

## What's this ?
- クラウドネイティブSTNSを試すと発言してしまったがために本当にやるしかなくなったので作成したAWS環境構築コード

  - 要素は以下の通り
      - VPCネットワーク
          - １VPC、２サブネット
      - EC2
          - インスタンス２台
              - １台は 踏み台 用（public subnet）
              - １台は STNSサーバー 用（private subnet）


## 実行時環境情報
- macOS Mojave 10.14.4
- VSCode 1.33.0
- Terraform v0.11.13
    - provider.aws v2.5.0[^1] 


## Prerequirements 

- AWS IAM ユーザー[^2]
    - アクセスキーを作成
- Terraform のインストール
- AWS CLI のインストール


## 利用方法

- Check `variables.tf`

- Set your `terraform.tfvars`
    ```
    myhome_gip = "[Set your home global ip]"

    aws_access_key = "[Set your access key]"
    aws_secret_key = "[Set your secret key]"

    key_name = "[Set your key name]"
    public_key_path = "[Set your key path]"
    ```

- Execute commands 
    ```
    cd ${your_appropriate_directory}
    git clone https://github.com/sogaoh/TerraformPractice.git

    cd TerraformPractice/aws-01
    (vi terraform.tfvars)

    terraform init 

    terraform plan 

    terraform apply

    -> 2 instances will be created...probably.
    ```


## 構成概要図
![](aws-01.png)


## Thanks to (参考資料等)
- [TerraformでAWSのインフラ構成構築を自動化する(入門)](https://khigashigashi.hatenablog.com/entry/2018/09/25/232313)
- [【AWS】IAMユーザの作成方法](https://qiita.com/mrmomoca/items/319bdb471aaf38f74c49)
- https://github.com/sogaoh/TerraformPractice/pull/2 (Thanks to terraform-jp Slack Community)

# 備考

[^1]: `terraform providers --version` でproviderのバージョン確認が可能（前提がありそう。terraform init 最低１回実行、かな）  
[^2]: 2FA の設定は、 Authy で行った。 Google Authenticator ではなぜか不明だが３回躓いたので。  
