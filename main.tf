terraform {
  required_version = "1.6.4"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.102.0"
    }
  }

  backend "s3" {
    endpoint   = "http://storage.yandexcloud.net"
    bucket     = "amphyx-terraform-storage-bucket"
    key        = "./terraform.tfstate"
    region     = "ru-central1-a"
    access_key = var.access_key
    secret_key = var.secret_key

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
  }
}

provider "yandex" {
  service_account_key_file = "./key.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = "ru-central1-a"
}

resource "yandex_vpc_network" "test-terraform-network" {
  name = "test-terraform-network"
}

resource "yandex_vpc_subnet" "subnet-for-instance1" {
  v4_cidr_blocks = ["192.168.10.0/24"]
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.test-terraform-network.id
}

resource "yandex_vpc_subnet" "subnet-for-instance2" {
  v4_cidr_blocks = ["192.168.11.0/24"]
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.test-terraform-network.id
}

module "instance1" {
  source = "./my-instance"

  instance_name  = "tf-instance1"
  image_family   = "lemp"
  public_ip_zone = "ru-central1-a"
  subnet_id      = yandex_vpc_subnet.subnet-for-instance1.id
}

module "instance2" {
  source = "./my-instance"

  instance_name  = "tf-instance2"
  image_family   = "lamp"
  public_ip_zone = "ru-central1-b"
  subnet_id      = yandex_vpc_subnet.subnet-for-instance2.id
}
