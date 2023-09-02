variable "hetzner_token" {
  default = "ADD_YOUR_TOKEN_HERE"
}

variable "hetzner_ssh_key_name" {
  description = "Hetzner SSH Key Name for Server Logins ~/.ssh/<HETZNER_SSH_KEY_NAME>.pub"
  default = "id_rsa"
}