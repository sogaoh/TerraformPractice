# GmailFilter

Gmail の Filter を設定する Terraform Codes.


## PreRequirements
- Google OAuth authorized
- terraform install
- direnv install

- .envrc configured
    - example
    
      ```.envrc
      export GOOGLE_CREDENTIALS=/path/to/application_default_credentials.json
      export IMPERSONATED_USER_EMAIL="xxx@xxx.xxx"  # mail address of me
      ```


## refs
- https://github.com/yamamoto-febc/terraform-provider-gmailfilter/
- https://github.com/GoogleCloudPlatform/terraformer/pull/500
- https://www.terraform.io/docs/providers/type/community-index.html
- [Gmailのフィルタを管理するためのTerraformプロバイダーを作った - febc技術メモ](https://febc-yamamoto.hatenablog.jp/entry/2020/04/26/182608)
- [TerraformerでGmailフィルタプロバイダーのコードをリバース生成する - febc技術メモ](https://febc-yamamoto.hatenablog.jp/entry/2020/05/08/101942)
- https://developers.google.com/gmail/api/reference/rest/v1/users.settings.filters/list
- https://developers.google.com/gmail/api/reference/rest/v1/users.settings.filters/create
- https://github.com/GoogleCloudPlatform/terraformer/issues/605
