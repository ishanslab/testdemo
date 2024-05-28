resource "null_resource" "execute_powershell" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command     = "powershell.exe -File ./test.ps1"
    working_dir = path.module
  }
}
