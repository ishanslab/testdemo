resource "null_resource" "execute_script" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command     = "bash ./test.sh"
    working_dir = path.module
  }
}
