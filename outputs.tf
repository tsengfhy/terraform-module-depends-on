output "value" {
  value       = data.template_file.this.rendered
  description = "The attribute of the source module you will use in the target module."
}