terraform {
  required_version = "1.6.4"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.102.0"
    }
  }
}

resource "yandex_vpc_address" "vm_address" {
  name = "${var.instance_name}-adress"
  external_ipv4_address {
    zone_id = var.public_ip_zone
  }
}

data "yandex_compute_image" "vm_image" {
  family = var.image_family
}

resource "yandex_compute_instance" "vm" {
  name = var.instance_name

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vm_image.id
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
  resources {
    cores  = 2
    memory = 2
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

