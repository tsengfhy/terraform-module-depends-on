<!-- BEGIN_TF_DOCS -->
# Terraform Module Depends On

## Introduction

As we know, **depends\_on** always triggers data source read, so if we use this on a module, the resources in it may be recreated every time.
[Here](https://github.com/hashicorp/terraform/issues/11806)

This module is used to replace the depends\_on syntax for modules.

## Usage

```terraform
module "source" {
  source = './modules/source'
}

module "depends_on" {
  source  = "git@github.com:tsengfhy/terraform-module-depends-on.git"
  depends = module.source.computed_value
  value   = module.source.used_value
}

module "target" {
  source = "./modules/target"
  usage = module.depends_on.value
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_depends"></a> [depends](#input\_depends) | The attribute of the source module you want to depends on | `any` | n/a | yes |
| <a name="input_value"></a> [value](#input\_value) | The attribute of the source module you will use in the target module | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_value"></a> [value](#output\_value) | The attribute of the source module you will use in the target module |





## Resources

| Name | Type |
|------|------|
| [template_file.this](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |


<!-- END_TF_DOCS -->