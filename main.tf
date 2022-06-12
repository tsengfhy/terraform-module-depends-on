data "template_file" "this" {
  template = file("${path.module}/templates/depends_on.tpl")

  vars = {
    depends = var.depends
    value   = var.value
  }
}