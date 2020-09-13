# GmailFilter

Gmail の Filter を設定する Terraform Codes.


## PreRequirements
- (direnv installed)
- (.envrc configured)
    - example
    
      ```.envrc
      export GOOGLE_CREDENTIALS=/path/to/domain-wide-deligated_service-account_credentials.json
      export IMPERSONATED_USER_EMAIL="xxx@xxx.xxx"  # mail address of me
      ```

- GCP : `Service Account` prepared
    - refs https://cloud.google.com/iam/docs/creating-managing-service-accounts
- G Suite :
    - API access with domain-wide delegation
        - refs https://support.google.com/a/answer/162106
    - Authorize your client ID
        - refs https://support.google.com/gsuitemigrate/answer/9222866

- terraform installed

- terraform.tfvars configured

```terraform.tfvars

credentials="{\"type\": \"service_account\",\"project_id\": \"XXXXXX\",\"private_key_id\": \"XXXXXXXX\",\"private_key\": \"-----BEGIN PRIVATE KEY-----\\nxxxx.....xxx\\n-----END PRIVATE KEY-----\\n\", \"client_email\": \"xxxx@XXXXX.iam.gserviceaccount.com\",\"client_id\": \"xxxxxxxx\",\"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\"token_uri\": \"https://oauth2.googleapis.com/token\",\"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/xxxxxxxx.iam.gserviceaccount.com\"}"
user_email="xxx@xxx.xxx"

```

### setup terraform-provider-gmailfilter
- Download binary from https://github.com/yamamoto-febc/terraform-provider-gmailfilter/releases
    - see https://github.com/yamamoto-febc/terraform-provider-gmailfilter/
- Place binary(`terraform-provider-gmailfilter_vX.X.X`) to `~/.terraform.d/plugins/darwin_amd64/`
    - or `${WorkingDirectory}/.terraform/plugins/darwin_amd64/`
- Allow executing binary (If macOS)
    - see [1](allowExecuting1.png), [2](allowExecuting2.png), [3](allowExecuting3.png)


## refs
- https://github.com/yamamoto-febc/terraform-provider-gmailfilter/
- https://github.com/GoogleCloudPlatform/terraformer/pull/500
- https://www.terraform.io/docs/providers/type/community-index.html
- [Gmailのフィルタを管理するためのTerraformプロバイダーを作った - febc技術メモ](https://febc-yamamoto.hatenablog.jp/entry/2020/04/26/182608)
- [TerraformerでGmailフィルタプロバイダーのコードをリバース生成する - febc技術メモ](https://febc-yamamoto.hatenablog.jp/entry/2020/05/08/101942)
- [最高すぎる！Gmail のフィルタ設定をデプロイできる CLI「gmailfilters」 - kakakakakku blog](https://kakakakakku.hatenablog.com/entry/2020/04/22/090002)
- https://developers.google.com/gmail/api/reference/rest/v1/users.settings.filters/list
- https://developers.google.com/gmail/api/reference/rest/v1/users.settings.filters/create
- https://github.com/GoogleCloudPlatform/terraformer/issues/605
