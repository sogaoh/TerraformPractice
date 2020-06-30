provider "google" {
 credentials = "${file("#{GCLOUD_KEYFILE_JSON}")}"
 project     = "${var.project}"
 region      = "${var.region}"
}