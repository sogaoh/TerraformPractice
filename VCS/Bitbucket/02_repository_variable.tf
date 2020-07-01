resource "bitbucket_repository_variable" "pixela_token" {
  key = "PIXELA_TOKEN"
  value = var.pixela_token_value
  repository = var.bitbucket_variables_repository
  secured = true
}

resource "bitbucket_repository_variable" "pixela_username" {
  key = "PIXELA_USERNAME"
  value = var.pixela_username_value
  repository = var.bitbucket_variables_repository
  secured = true
}

resource "bitbucket_repository_variable" "pixela_webhook_hash" {
  key = "PIXELA_WEBHOOK_HASH"
  value = var.pixela_webhook_hash_value
  repository = var.bitbucket_variables_repository
  secured = true
}
