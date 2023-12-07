variable "image_family" {
  type        = string
  default     = "lemp"
  description = "Имя семейства образа для интсанса"
}

variable "public_ip_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Зона публичного IP"
}

variable "subnet_id" {
  type        = string
  description = "ID подсети"
}

variable "instance_name" {
  type        = string
  default     = "instance"
  description = "Название инстанса"
}

