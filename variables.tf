variable "app_name" {
  description = "The app name to use. Must be usable as a DNS hostname"
  type = string
}

variable "docker_image" {
  description = "The Docker image to deploy"
  type = string
}

variable "docker_credentials" {
  description = "Optional docker credentials to use"
  type = object({
    username = string
    password = string
  })
  default = {
    username = ""
    password = ""
  }
}

variable "replicas" {
  description = "Number of replicas to spin up"
  type = number
  default = 1
}

variable "serial_number" {
  description = "Serial number of the device to deploy to"
  type = string
}

variable "container_port" {
  description = "Container port number where the app listens on"
  type = number
  default = 8080
}