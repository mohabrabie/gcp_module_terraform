variable "region" {
    type    = string
}
variable "zone" {
    type    = string
}
variable "machine_type" {
    type    = string
}
variable "machine_name" {
    type    = string
}
variable "vm_address" {
    type    = string
}
variable "gce_ssh_user" {
    type    = string
    description = "the user to ssh with"
}
variable "gce_ssh_pub_key_file" {
    type    = string
    description = "the public key location to ssh into the VM"
}

