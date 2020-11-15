resource "google_compute_instance" "simulator" {
  name         = "compute-simulator"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  tags = ["project", "tmf"]

  boot_disk {
    auto_delete = true

    initialize_params {
      image = "debian-cloud/debian-9"
      size  = 50
    }
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

  metadata_startup_script = "echo hi > /test.txt"
}

