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
}
