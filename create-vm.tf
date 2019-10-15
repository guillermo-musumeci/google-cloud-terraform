resource "google_compute_instance" "default" {
  project      = "kopicloud-project-id"
  name         = "kopicloud-tf-01"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-bionic-v20191008"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
