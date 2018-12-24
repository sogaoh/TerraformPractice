resource "google_compute_firewall" "fw-rule-front-seg" {
  name    = "fw-rule-front-seg"
  network = "${google_compute_network.vpc-01.name}"
 
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["22","80","443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["front-servers"]
}