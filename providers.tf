terraform {
  cloud {
    organization = "kolobe-poc"

    workspaces {
      name = "snowflake-poc"
    }
  }
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.55.1"
    }
  }
}


provider "snowflake" {
  # Configuration options
}