variable "image_name" {
  description = "Image for container"
  default     = "wernight/cpuminer-multi:alpine"
}

variable "wallet" {
  description = "Wallet credentials"
  default     = "DUSVnzc6zWbrWqrRVaZGC7pkT519Lwvmbs"
}

variable "algo" {
  default = "qubit"
}

variable "url" {
  default = "stratum+tcp://52.11.201.217:3012"
}
