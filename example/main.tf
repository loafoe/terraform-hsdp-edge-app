module "app" {
  source  = "philips-labs/stl-app/hsdp"
  version = "0.1.0"

  serial_number = var.serial_number
  app_name = "grafana"
  docker_image = "grafana/grafana:latest"
  container_port = 3000
}
