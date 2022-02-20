locals {

  input       = merge(var.input, {})
  clean_input = { for k, v in local.input : k => v if v != null }

  defaults = merge(var.defaults, {})
  output   = merge(local.defaults, local.clean_input)
}
