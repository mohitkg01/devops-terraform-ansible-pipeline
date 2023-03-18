# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "devopswithdeepak-terrafom-backend"
    key    = "project/remote.tfstate"
    region = "us-east-1"
  }
}
