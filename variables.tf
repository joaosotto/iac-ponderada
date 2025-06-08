#variables.tf
variable "access_key" {
    description = "Access key to AWS console"
}
variable "secret_key" {
    description = "Secret key to AWS console"
}

variable "session_token" {
    description = "Session token to AWS console"
}

variable "region" {
    description = "AWS region"
}

variable "ec2_ami_id" {
  description = "AMI ID para a EC2 (ex: Ubuntu 22.04 us-east-1: ami-053b0d53c279acc90)"
  default     = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS us-east-1
}

variable "ec2_public_key" {
  description = "Chave pública SSH para acessar a EC2"
  default = "SHA256:kUGnqFnPV0qy9gQwWAINCpxbRUFgB46BJcxadzTd5nU"
}