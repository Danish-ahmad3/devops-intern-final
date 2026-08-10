job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"
  group "python-app" {
    count = 1
    task "hello-task" {
      driver = "docker"
      config {
        image = "python:3.9-slim"
        args  = ["-c", "print('Hello, DevOps from Nomad!')"]
      }
      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}

