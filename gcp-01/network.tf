resource "google_compute_network" "vpc-01" {
  name = "vpc-01"
  auto_create_subnetworks = "false"
}
 
resource "google_compute_subnetwork" "subnet-01-a" {
  name          = "subnet-01-a"
  ip_cidr_range = "10.0.0.0/24"
  network       = "${google_compute_network.vpc-01.name}"
  description   = "subnet-01-a"
  region        = "${var.region}"
}