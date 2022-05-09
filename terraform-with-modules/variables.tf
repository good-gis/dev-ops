variable "yandex-provider-data" {
  type = map(string)
  default = {
    "token"     = ""
    "cloud_id"  = ""
    "folder_id" = ""
    "zone"      = ""
  }
}