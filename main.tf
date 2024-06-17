provider "local" {
  
}

resource "null_resource" "docker" {


  provisioner "local-exec" {
    command = "curl -fsSL https://get.docker.com | sudo sh"
  }
}
resource "null_resource" "cosmos-cloud" {
depends_on = [null_resource.docker]


  provisioner "local-exec" {
    command = "sudo docker run -d --network host  --privileged --name cosmos-server -h cosmos-server --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /:/mnt/host -v /var/lib/cosmos:/config azukaar/cosmos-server:latest"
  }
}

resource "null_resource" "dockpit" {
depends_on = [null_resource.cosmos-cloud]

  provisioner "local-exec" {
    command = "${file("cockpit.sh")}"
  }
}
