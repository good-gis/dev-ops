terraform {
  required_version = "1.1.9"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.74.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-state-bucket-gis"
    region     = "ru-central1-a"
    key        = "main.tfstate"
    access_key = "YCAJEUFaW4pFMY1QzMcRGcGUX"
    secret_key = "YCNf0QaBokCwBfHArx8Ijqei9EWEyXGr2ZPil-qk"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
provider "yandex" {
  token     = var.yandex-provider-data["token"]
  cloud_id  = var.yandex-provider-data["cloud_id"]
  folder_id = var.yandex-provider-data["folder_id"]
  zone      = var.yandex-provider-data["zone"]
}

resource "yandex_vpc_network" "network" {
  name = "network"
}

resource "yandex_vpc_subnet" "subnet1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

module "ya_instance_1" {
  source                = "./modules/instance"
  instance_family_image = "ubuntu-2004-lts"
  instance_name         = "ubuntu-2004-1"
  vpc_subnet_id         = yandex_vpc_subnet.subnet1.id
}

module "ya_instance_2" {
  source                = "./modules/instance"
  instance_family_image = "ubuntu-2004-lts"
  instance_name         = "ubuntu-2004-2"
  vpc_subnet_id         = yandex_vpc_subnet.subnet1.id
}

module "ya_instance_3" {
  source                = "./modules/instance"
  instance_family_image = "centos-stream-8"
  instance_name         = "centos-8"
  vpc_subnet_id         = yandex_vpc_subnet.subnet1.id
}

