output "value" {
  description = "The attribute of the source module you will use in the target module"
  value       = data.template_file.this.rendered
}