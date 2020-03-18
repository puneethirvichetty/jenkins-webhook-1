provider "google" {
  credentials = file("account.json")
  project     = "cloudglobaldelivery-1000135575"
  region      = "us-central1"
}