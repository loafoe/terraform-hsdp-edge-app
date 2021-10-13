resource "hsdp_edge_app" "app" {
  serial_number = var.serial_number
 
  name = "${var.app_name}.yml"
  content = templatefile("${path.module}/resources/app.yml", {
    app_name = var.app_name
    docker_image = var.docker_image
    replicas = var.replicas
    container_port = var.container_port
    hostname = var.app_name
  })
}
