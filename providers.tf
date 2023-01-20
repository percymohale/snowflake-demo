terraform {
  cloud {
    organization = "kolobe-poc"

    workspaces {
      name = "snowflake-poc"
    }
  }
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.55.1"
    }
  }
}


provider "snowflake" {
  role        = "SYSADMIN"
  username    = var.username
  account     = var.account
  region = var.region
  private_key_path = "./snowflake_tf_snow_key.p8"
}


resource "snowflake_database" "db" {
  name = "TF_DEMO"
  comment = "This is a test DB"
}