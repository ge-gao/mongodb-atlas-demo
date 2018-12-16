//--------------------------------------------------------------------
// Modules
module "cluster" {
  source  = "app.terraform.io/tfe-poc/cluster/mongodbatlas"
  version = "0.1.1"

  atlas_cidr_block = "10.20.21.0/24"
  authn-database-name = "admin"
  authn-database-role-name = "read"
  database-user-password = "mongodb"
  database-user-username = "reader"
}
