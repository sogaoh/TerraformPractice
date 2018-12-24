# gcp-01

## What's this ?
- Zabbix Advent Calendar # Day 24 の環境構築のために作成したコード
- 図を描きたいところだが、時間の関係で一旦あきらめる
    - 要素は以下の通り
        - VPCネットワーク
            - 単一VPC、単一サブネット
            - [[GCP][Terraform][v0.11.1]GCEとVPCを自動化してみたら素晴らしかった！](https://blog.adachin.me/archives/6854) をやや猿真似した
        - GCE
            - インスタンス２台
                - １台は Zabbix Server 用
                - １台は Zabbix Agent 用（Nginx でも入れようかなと思っている）
                - スペックは適当。Server がちょっと強め、Agent がど軽め、を意図


## 実行時環境情報
- macOS Mojave 10.14.1
- VSCode 1.30.1
- Terraform v0.11.11
    - provider.google v1.20.0 


## 構築メモ
- .gitignore しているが、 `variables.tf` に内部名を書いている
- backend の初期化に苦戦し、結局以下のように「手打ち」
    ```
    terraform init \
        -backend=true \
        -backend-config="credentials=[/path/to/credential-json]" \
        -backend-config="project=[project]" \
        -backend-config="bucket=[bucket]" \
        -backend-config="prefix=terraform/state"
    ```
- plan でも以下のように怒られ、打開できず [/path/to/credential-json] を書いて実行して凌いだ
    ```
    ❯ terraform plan

    Error: Error asking for user input: 1 error(s) occurred:

    * provider.google: file: open #{GCLOUD_KEYFILE_JSON}: no such file or directory in:

    ${file("#{GCLOUD_KEYFILE_JSON}")}
    ```


