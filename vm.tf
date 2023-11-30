#### VM GCP vm-live #### 
resource "google_compute_instance" "instance" {
  boot_disk {
    auto_delete = var.true
    device_name = var.machine_name_disk

    initialize_params {
      image = var.vm_image
      size  = var.disk_size
    }

    mode = var.disk_mode
  }

  can_ip_forward      = var.false
  deletion_protection = var.false
  enable_display      = var.false

  machine_type = var.machine_type

  metadata = {
    enable-oslogin = var.true
  }

  name = var.machine_name

  network_interface {
    subnetwork = var.network
  }

  scheduling {
    automatic_restart  = var.true
    preemptible        = var.false
    provisioning_model = var.provisioning_model
  }

  service_account {
    email  = var.account_service
    scopes = var.scope
  }

  zone = var.zone_vm
}
