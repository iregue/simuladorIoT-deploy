terraform {
  backend "gcs" {
    bucket      = "tf-simulador-iot-tfm"
    prefix      = "gce/terraform.tfstate"
  }
}

