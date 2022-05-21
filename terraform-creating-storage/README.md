<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_iam_service_account.sa](https://registry.terraform.io/providers/yandex-cloud/yandex/0.74.0/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_static_access_key.sa-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/0.74.0/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.sa-admin](https://registry.terraform.io/providers/yandex-cloud/yandex/0.74.0/docs/resources/resourcemanager_folder_iam_member) | resource |
| [yandex_storage_bucket.state](https://registry.terraform.io/providers/yandex-cloud/yandex/0.74.0/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_yandex-provider-data"></a> [yandex-provider-data](#input\_yandex-provider-data) | n/a | `map(string)` | <pre>{<br>  "cloud_id": "b1g87cm8548mm8obcm2j",<br>  "folder_id": "b1gs95gsuobv7d7ijpbq",<br>  "token": "AQAAAAAQ1-6nAATuwSi6iMybU0B9gArF8FDR3ns",<br>  "zone": "ru-central1-a"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | n/a |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->