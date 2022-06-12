# Terraform Module Depends On

## Introduction

As we know, **depends_on** always triggers data source read, so if we use this on a module, the resources in it may be recreated every time.
[Here](https://github.com/hashicorp/terraform/issues/11806)

This module is used to replace the depends_on syntax for modules.

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