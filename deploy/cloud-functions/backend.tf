terraform {
  backend "gcs"{
    bucket = "terraform-remote-state-data"
    prefix = "resources/cloud-functions/state"
  }
}