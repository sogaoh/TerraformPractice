resource "google_compute_firewall" "fw-rule-monitoring" {
  name    = "fw-rule-monitoring"
  network = "${google_compute_network.vpc-01.name}"
 
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["10050","10051"]
  }
  source_ranges = ["10.0.0.0/24"]
  target_tags = ["monitoring"]
}

resource "google_compute_firewall" "fw-rule-front-seg" {
  name    = "fw-rule-front-seg"
  network = "${google_compute_network.vpc-01.name}"
 
  allow {
    protocol = "tcp"
    ports    = ["22","80","443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["front-server"]
}