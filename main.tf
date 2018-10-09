variable "github_token" {}
variable "github_organization" {}
variable "new_github_repo_description" {}
variable "github_member_username" {}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

#Creating new GitHub repository
resource "github_repository" "repo1" {
  name        = "repo1"
  description = "${var.new_github_repo_description}"
}

# Adding user as a member to the organisation. Should be invited first. 

resource "github_membership" "membership_for_user_user" {
  username = "${var.github_member_username}"
  role     = "member"
}

#Providing permissions to the new member for the new repo
resource "github_repository_collaborator" "repo_permissions" {
  repository = "repo1"
  username   = "${var.github_member_username}"
  permission = "admin"
}
