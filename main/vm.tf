resource "google_compute_instance" "nginx_vm" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.zone

  network_interface {
    network = google_compute_network.test_network.self_link // placing the VM inside the default network
    access_config {
      nat_ip = google_compute_address.vm_ip.address // attaching the static IP
    }
  }
  boot_disk {
    initialize_params {
      image = "Ubuntu/Ubuntu 18.04 LTS"
    }
  }

  metadata_startup_script = """
    sudo apt update -y
    sudo apt install nginx -y
    sudo ufw app list
    sudo ufw allow 'Nginx HTTP'
    sudo ufw status
  """
   metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }
}