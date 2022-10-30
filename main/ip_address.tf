//create a static IP 
resource "google_compute_address" "vm_ip" {
  name         = var.vm_ip_address
}