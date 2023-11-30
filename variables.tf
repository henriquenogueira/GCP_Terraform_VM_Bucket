#### vars to resources ####

### change project gcp ###
variable "gcp_project" {
  default = "myproject"
}

variable "region" {
  default = "southamerica-east1"
}

variable "zone_vm" {
  default = "southamerica-east1-b"
}

variable "machine_type" {
  default = "e2-standard-4"
}

###change name vm###
variable "machine_name" {
  default = "vm-live"
}

###change disk###
variable "machine_name_disk" {
  default = "vm-disk"
}

### change account service
variable "account_service" {
  default = "xxxxx"
}

### vm image
variable "machine_image" {
  default = "xxxxxxxxx"
}

### account_id
variable "account_id" {
  default = "xxxx"
}

variable "display_name" {
  default = "App Engine default service account"
}

variable "vm_image" {
  default = "xxxxxx"
}

variable "network" {
  default = "xxxxx"
}

variable "true" {
  default = "true"
}

variable "false" {
  default = "false"
}

variable "disk_mode" {
  default = "READ_WRITE"
}

variable "scope" {
  type = list(string)
  default = [
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append"
  ]
}

variable "disk_size" {
  default = "128"
}

variable "provisioning_model" {
  default = "STANDARD"
}

variable "bucket_name" {
  default = "live-caption-terraform"
}

#### modificar credencial para criação de máquina ####
variable "credential" {
  default = "~/xxx.json"
}