variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

provider "okta" {
  org_name  = "${var.org_name}"
  api_token = "${var.api_token}"
  base_url  = "${var.base_url}"
}

data "okta_group" "all" {
  name = "Everyone"
}

resource "okta_user" "will" {
  login      = "William.C.Durant@mailinator.com"
  email      = "William.C.Durant@mailinator.com"
  first_name = "William"
  last_name  = "Durant"
}

resource "okta_user" "ransom" {
  login      = "Ransom.E.Olds@mailinator.com"
  email      = "Ransom.E.Olds@mailinator.com"
  first_name = "Ransom"
  last_name  = "Olds"
}

resource "okta_oauth_app" "example" {
  label          = "Example OIDC App"
  type           = "browser"
  grant_types    = ["implicit"]
  redirect_uris  = ["http://localhost:8080/implicit/callback"]
  response_types = ["token", "id_token"]
  grant_types    = ["implicit"]
  issuer_mode    = "ORG_URL"
  groups         = ["${data.okta_group.all.id}"]
}

data "template_file" "configuration" {
  template = "${file("templates/dotenv.template")}"
  vars {
    client_id = "${okta_oauth_app.example.client_id}"
    domain    = "${var.org_name}.${var.base_url}"
  }
}
 
resource "local_file" "dotenv" {
    content  = "${data.template_file.configuration.rendered}"
    filename = ".env"
}

