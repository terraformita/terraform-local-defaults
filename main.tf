locals {
  clean_input = {
    for k, v in var.input : k => v if v != null
  }

  output = merge(var.defaults, local.clean_input)
}
