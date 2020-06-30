resource "google_compute_instance" "srv-01" {
  name         = "srv-01"
  machine_type = "${var.instance_type_srv-01}"
  zone         = "${var.region_zone}"
  tags         = ["front-server","monitoring"]
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = "30"
      type = "pd-ssd"
    }
  }
 
  network_interface {
    subnetwork = "${google_compute_subnetwork.subnet-01-a.name}"
    access_config {
        // Ephemeral IP
    }
  }
 
  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.metadata-ssh_keys}"
    }
}

resource "google_compute_instance" "agt-01" {
  name         = "agt-01"
  machine_type = "${var.instance_type_agt-01}"
  zone         = "${var.region_zone}"
  tags         = ["front-server","monitoring"]
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = "10"
      type = "pd-ssd"
    }
  }
 
  network_interface {
    subnetwork = "${google_compute_subnetwork.subnet-01-a.name}"
    access_config {
        // Ephemeral IP
    }
  }
 
  metadata {
    "block-project-ssh-keys" = "true"
    "sshKeys" = "${var.metadata-ssh_keys}"
    }
}
