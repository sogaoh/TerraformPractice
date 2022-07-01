terraform {
  required_providers {
    circleci = {
      source = "mrolla/circleci"
      version = "0.6.1"
    }
  }
}

provider circleci {
  api_token = var.circleci_token
  vcs_type = "github"
  organization = var.circleci_organization
}

resource circleci_environment_variable "docker_login" {
  project = var.circleci_project_name
  name = "DOCKER_LOGIN"
  value = var.docker_login
}

resource circleci_environment_variable "docker_pwd" {
  project = var.circleci_project_name
  name = "DOCKER_PWD"
  value = var.docker_pwd
}

resource circleci_environment_variable "slack_endpoint" {
  project = var.circleci_project_name
  name = "SLACK_ENDPOINT"
  value = var.slack_endpoint
}
