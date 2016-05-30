job "luigid" {
  datacenters = ["dc1"]
  task "luigid" {
    driver = "docker"

    config {
      image = "frosner/luigid"
    }

    resources {
      cpu = 500
      memory = 256
      network {
        mbits = 10
        port "ui" {}
      }
    }
  }
}
