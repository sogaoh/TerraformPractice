resource "github_actions_secret" "pixela_token" {
  repository       = var.github_secret_repository
  secret_name      = "PIXELA_TOKEN"
  plaintext_value  = var.pixela_token_value
}

resource "github_actions_secret" "pixela_username" {
  repository       = var.github_secret_repository
  secret_name      = "PIXELA_USERNAME"
  plaintext_value  = var.pixela_username_value
}

resource "github_actions_secret" "pixela_webhook_hash" {
  repository       = var.github_secret_repository
  secret_name      = "PIXELA_WEBHOOK_HASH"
  plaintext_value  = var.pixela_webhook_hash_value
}
