//--------------------------------------------------------------------
// Variables
variable "cluster_atlas_cidr_block" {}
variable "cluster_authn-database-name" {}
variable "cluster_authn-database-role-name" {}
variable "cluster_aws_account_id" {}
variable "cluster_database-user-password" {}
variable "cluster_database-user-username" {}
variable "cluster_mongodb_atlas_api_key" {}
variable "cluster_mongodb_atlas_org_id" {}
variable "cluster_mongodb_atlas_project_name" {}
variable "cluster_mongodb_atlas_username" {}
variable "cluster_mongodbatlas_cluster_backup" {}
variable "cluster_mongodbatlas_cluster_disk_gb_enabled" {}
variable "cluster_mongodbatlas_cluster_mongodb_major_version" {}
variable "cluster_mongodbatlas_cluster_name" {}
variable "cluster_mongodbatlas_cluster_provider_name" {}
variable "cluster_mongodbatlas_cluster_region" {}
variable "cluster_mongodbatlas_cluster_size" {}
variable "cluster_provider_name" {}
variable "cluster_region" {}
variable "cluster_vpc_cidr_block" {}
variable "cluster_vpc_id" {}
variable "cluster_whitelist_cidr_block" {}

//--------------------------------------------------------------------
// Modules
module "cluster" {
  source  = "app.terraform.io/tfe-poc/cluster/mongodbatlas"
  version = "0.1.1"

  atlas_cidr_block = "${var.cluster_atlas_cidr_block}"
  authn-database-name = "${var.cluster_authn-database-name}"
  authn-database-role-name = "${var.cluster_authn-database-role-name}"
  aws_account_id = "${var.cluster_aws_account_id}"
  database-user-password = "${var.cluster_database-user-password}"
  database-user-username = "${var.cluster_database-user-username}"
  mongodb_atlas_api_key = "${var.cluster_mongodb_atlas_api_key}"
  mongodb_atlas_org_id = "${var.cluster_mongodb_atlas_org_id}"
  mongodb_atlas_project_name = "${var.cluster_mongodb_atlas_project_name}"
  mongodb_atlas_username = "${var.cluster_mongodb_atlas_username}"
  mongodbatlas_cluster_backup = "${var.cluster_mongodbatlas_cluster_backup}"
  mongodbatlas_cluster_disk_gb_enabled = "${var.cluster_mongodbatlas_cluster_disk_gb_enabled}"
  mongodbatlas_cluster_mongodb_major_version = "${var.cluster_mongodbatlas_cluster_mongodb_major_version}"
  mongodbatlas_cluster_name = "${var.cluster_mongodbatlas_cluster_name}"
  mongodbatlas_cluster_provider_name = "${var.cluster_mongodbatlas_cluster_provider_name}"
  mongodbatlas_cluster_region = "${var.cluster_mongodbatlas_cluster_region}"
  mongodbatlas_cluster_size = "${var.cluster_mongodbatlas_cluster_size}"
  provider_name = "${var.cluster_provider_name}"
  region = "${var.cluster_region}"
  vpc_cidr_block = "${var.cluster_vpc_cidr_block}"
  vpc_id = "${var.cluster_vpc_id}"
  whitelist_cidr_block = "${var.cluster_whitelist_cidr_block}"
}
