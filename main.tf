resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  name = "my-nginx"
  image = docker_image.nginx_image.image_id

   ports {
    internal = 80
    external = 8080
   }

}