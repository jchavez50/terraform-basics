# Provider type
provider "google" {
    project     = "${var.project_name}"
    region      = "${var.aws_region}"
    credentials = "${file("${var.ssh-key}/apigee-test-334219.json")}"
}

# Compute instance 
resource "google_compute_instance" "default" {
    name = ""

}