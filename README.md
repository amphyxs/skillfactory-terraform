<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.102.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.102.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance1"></a> [instance1](#module\_instance1) | ./my-instance | n/a |
| <a name="module_instance2"></a> [instance2](#module\_instance2) | ./my-instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_iam_service_account.sa](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_static_access_key.sa-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.sa-editor](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/resourcemanager_folder_iam_member) | resource |
| [yandex_storage_bucket.storage-bucket](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/storage_bucket) | resource |
| [yandex_vpc_network.test-terraform-network](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet-for-instance1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/vpc_subnet) | resource |
| [yandex_vpc_subnet.subnet-for-instance2](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/vpc_subnet) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | n/a |
| <a name="output_external_ip_address_instance1"></a> [external\_ip\_address\_instance1](#output\_external\_ip\_address\_instance1) | n/a |
| <a name="output_external_ip_address_instance2"></a> [external\_ip\_address\_instance2](#output\_external\_ip\_address\_instance2) | n/a |
| <a name="output_internal_ip_address_instance1"></a> [internal\_ip\_address\_instance1](#output\_internal\_ip\_address\_instance1) | n/a |
| <a name="output_internal_ip_address_instance2"></a> [internal\_ip\_address\_instance2](#output\_internal\_ip\_address\_instance2) | n/a |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | n/a |
<!-- END_TF_DOCS -->