variable "region" {
  default = "us-east-1"
}


variable "instance_type" {
  description = "Tipo de instancia EC2 Web"
  type        = string
  default     = "t3.micro"

}

variable "disable_api_termination" {
  description = "Protege a instancia contra delete acidental"
  type        = bool
  default     = false

}

variable "init_names" {
  description = "Lista de nomes para instâncias"
  type        = list(string)
  default     = ["Helloworld", "Helloworld2", "Helloworld3"]

}

variable "amis" {
  description = "AMIs para determinadas regiões"
  type        = map(any)
  default = {
    "us-east-1" = "ami-05fa00d4c63e32376"
    "us-east-2" = "ami-0568773882d492fc8"

  }

}
