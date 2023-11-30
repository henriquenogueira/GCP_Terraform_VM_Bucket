#### Backend terraform ####
terraform {
  backend "gcs" {
    bucket = "live-terraform"
    prefix = "terraform/live/state"
  }
}