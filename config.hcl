backend "file" {
    path = "/apps/vault/db"
}

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = 1
}

disable_mlock = true
