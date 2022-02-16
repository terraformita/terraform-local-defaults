module "non_null" {
  source = "../../"

  defaults = {
    a = "b"
    c = "d"
    e = []
    f = {
      g = "h"
      k = "l"
    }
    m = {}
  }

  input = {
    a = "HELLO"
    e = [
      "some",
      "values"
    ]
    f = {}
    m = {
      n = "o"
    }
  }
}

module "all_null" {
  source = "../../"

  defaults = null
  input    = null
}

module "null_defaults" {
    source = "../../"
    defaults = null
    input = {
    a = "HELLO"
    e = [
      "some",
      "values"
    ]
    f = {}
    m = {
      n = "o"
    }
  }
}

module "null_input" {
  source = "../../"

  defaults = {
    a = "b"
    c = "d"
    e = []
    f = {
      g = "h"
      k = "l"
    }
    m = {}
  }

  input = null    
}

output "non_null" {
  value = module.non_null.output
}

output "all_null" {
    value = module.all_null.output
}

output "null_defaults" {
    value = module.null_defaults.output
}

output "null_input" {
    value = module.null_input.output
}
