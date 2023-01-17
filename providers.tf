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
  #username    = var.username
  account     = var.account
  private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDvGcRchwc2uokCHe3ztakTWxzXHXA7KgYRMaxg56upAoI8VlEjrMa7wsvCCJ/vQKTV/7FKizEC0pBa8K+YlQpvB5pssI65Y4trsdU5RGbWCL8zHymfWxlyI0XY75CBe/xHrVTdoQ8zmQK1Tq2yqcCr9mf1vODqDvuG9hRPJ38OASc04e6nCYXraymFQhMQZ5eOb1P6G/UcWaNIxJ+MFLifGrzHyV+3RRy6O0D4TPL/HUNpN8G0okxHok0TT+yUl6rPGmYmWDIfxYYnV03L8lU0KqrPQaWOUro4hjchB+bMUMmEeOYVMOI2A6WtxenehqXNs7w9Z0xUMy98dZiMRcQzAgMBAAECggEAAjm5LCtNk+LUl6JzrosIUdfNQutROhvABrTxp81AOch+MdWT18Mp7mF3yAyQgIeXgS5qFgmJoT8YfOA0ojTw7euiMlTKX0tf5ta251uNoXxfWzh1CLiuWfOeGNDSBYKD7J7eZVm0bISGE+3xi/Isiu02NoFVjpgpGy57LeluM1Em0qlWK5wFC32wt9C+kIpOd2euqz3C0yBKu7+wTgeg85BoYWFz55UM3zTm01GUGhnvQfUBAZAKbioScrzp/pMO/8LK0Fs5vO/yBnL83CC8JRhyqoNDgr3AwDOjCgL04b3Up3gi1bgzh63MiIbswEIzB0Jpo7q8svxST9Sv8IiroQKBgQD/Ld8Sg/I8liZNTeNkyjQ+UbxCYivlAq+6fjd8Tb2YTLQVsCfx23XZXyD4rU9DgBVdVF84fNO0y2hk7wgVcEkpCrePFu4thv0nqMQoeWlwlXDWZkfscpNVj8F7dVBcZT3hDoDWV0APAhTXWSTyda0sZ6egikPgwix3NWo1mID6CQKBgQDv3qfclFKa9G+UPXiKe42TRd6vAKzjPiBQ2lJcb+O5a9mqidn3E6Ua9aMVAB6pwVLekqNAy+59YSgGBKc34Y553n5MFhzCOGQVTk6cCoVr01sVecq1v7qSALyog24kjIubiPE4F1DTQM37hLLlSWUax6VUty1P/Qixf7NaC9qLWwKBgHhxWUnu92X7ZOa17a+D9Ta484fNuHQmWXVH376PHv8ErTdTZvc0I6LO0MwvWSs+CFd93FfYK0C5hXOmkwUzc4Sop00lgJQCk/ilIrkL3WWjU5gOvMHwrnQDH0q7a4vAyX0xkEQa+IRc8iNW0yaRvoQoBKm0uScb30sA7jmP2sipAoGBAIknVfIROT5y383ybBc62FPKUq7cAv8Yid/RReCm9Z4TJe2WTvQw3moQ5APhAqdr7Bdp30DwmlhEkl8GkBqqtQ3IA40744vGNKveD6K3fVyPCHi6IAdWLrbHBxiPtg3d8wGnBs5cvpFcb6sOUEA8fDwYxdcvuhAPjcX4T7QALSEbAoGBAPq83GPLM0qfMAjScbaCydDFOJHCaVjZb9D1jBcj1n4+6GVu6auKS/sl36oimSEmsfINNJACCDB3Q4+ANDIo4NfMnYFjHwnW34prCkvBqPtkGlh28g4O1HlLzQfQwZYP8LpdXKtcqF4xeiHmV2R5poPTvEiBvKTuSBQpAeEwLtW0"
}


resource "snowflake_database" "db" {
  name = "TF_DEMO"
}