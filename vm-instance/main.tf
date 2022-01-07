# Provider type
provider "google" {
    project     = "${var.project_name}"
    region      = "${var.region}"
    credentials = "${file("${var.path}/apigee-test-334219.json")}"
}

# Compute instance 
resource "google_compute_instance" "default" {
    name = "meta-vm"
    machine_type = "n1-standard-1"
    zone = "us-west2-a"

    boot_disk {
      initialize_params {
          image = "ubuntu-os-cloud/ubuntu-1804-lts"
      }
    }

    network_interface {
      network = "default"
    }

    service_account {
        scopes = ["cloud-platform"]    
    }

}