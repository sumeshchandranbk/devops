resource "hcloud_server" "master" {
  name       = "master"
  image      = "debian-12"
  server_type = "cx11"
  location   = "fsn1"
  backups    = false
  labels     = { "role" = "master" }
  ssh_keys   = [hcloud_ssh_key.ssh_key.id]
  network {
    network_id = hcloud_network.internal.id

  }
}

resource "hcloud_server" "worker1" {
  name       = "worker1"
  image      = "debian-12"
  server_type = "cx11"
  location   = "fsn1"
  backups    = false
  labels     = { "role" = "worker" }
  ssh_keys   = [hcloud_ssh_key.ssh_key.id]
  network {
    network_id = hcloud_network.internal.id
  }
}

resource "hcloud_server" "worker2" {
  name       = "worker2"
  image      = "debian-12"
  server_type = "cx11"
  location   = "fsn1"
  backups    = false
  labels     = { "role" = "worker" }
  ssh_keys   = [hcloud_ssh_key.ssh_key.id]
  network {
    network_id = hcloud_network.internal.id

  }
}

resource "hcloud_network" "internal" {
  name = "internal-network"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_network_subnet" "subnet" {
  network_id = hcloud_network.internal.id
  type       = "server"
  network_zone = "eu-central"
  ip_range   = "10.0.0.0/24"
}