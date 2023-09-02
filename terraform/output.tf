output "master_ip" {
  value = hcloud_server.master.ipv4_address
}

output "worker1_ip" {
  value = hcloud_server.worker1.ipv4_address
}

output "worker2_ip" {
  value = hcloud_server.worker2.ipv4_address
}