# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "devops-terrafom-backend-mohit"
    key    = "project/remote.tfstate"
    region = "us-east-1"
  }
}
