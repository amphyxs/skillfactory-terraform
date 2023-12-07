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

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.vm](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/compute_instance) | resource |
| [yandex_vpc_address.vm_address](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/resources/vpc_address) | resource |
| [yandex_compute_image.vm_image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.102.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_family"></a> [image\_family](#input\_image\_family) | Имя семейства образа для интсанса | `string` | `"lemp"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Название инстанса | `string` | `"instance"` | no |
| <a name="input_public_ip_zone"></a> [public\_ip\_zone](#input\_public\_ip\_zone) | Зона публичного IP | `string` | `"ru-central1-a"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID подсети | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_vm_ip_address"></a> [external\_vm\_ip\_address](#output\_external\_vm\_ip\_address) | n/a |
| <a name="output_internal_vm_ip_address"></a> [internal\_vm\_ip\_address](#output\_internal\_vm\_ip\_address) | n/a |
<!-- END_TF_DOCS -->