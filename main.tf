provider "google" {
  credentials = file("account.json")
  project     = "cloudglobaldelivery-1000135575 "
  region      = "us-central1"
}
#d

resource "google_compute_instance" "default" {
  name         = "test-a"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
}
}
