terraform {
  cloud {
    organization = "kolobe-poc"

    workspaces {
      name = "snowflake-poc"
    }
  }
}