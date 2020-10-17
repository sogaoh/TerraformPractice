resource "gitlab_project_variable" "pixela_token" {
  project = var.gitlab_project_repository
  key = "PIXELA_TOKEN"
  value = var.pixela_token_value
  masked = true
}

resource "gitlab_project_variable" "pixela_username" {
  project = var.gitlab_project_repository
  key = "PIXELA_USERNAME"
  value = var.pixela_username_value
  #masked = true
}

resource "gitlab_project_variable" "pixela_webhook_hash" {
  project = var.gitlab_project_repository
  key = "PIXELA_WEBHOOK_HASH"
  value = var.pixela_webhook_hash_value
  masked = true
}
