provider "yandex" {
  service_account_key_file = "authorized_key.json"
  cloud_id                 = "b1gchrqd3jsi0srgejjo"
  folder_id                = "b1gjbcdp4ij0bkm2gt1q"
}

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
  bucket = "s3diplom-khabibullin"
  region = "ru-central1"
  key    = "diploma/terraform.tfstate"

  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true # необходимая опция Terraform для версии 1.6.1 и старше.
  skip_s3_checksum            = true # необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.
  }
}