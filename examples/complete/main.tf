module "defaults" {
  source  = "../../"

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

output "out" {
    value = module.defaults.output
}
