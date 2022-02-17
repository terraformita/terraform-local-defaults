# Handle Default Values on Complex Types

This module attempts to cover the temporary hole in Terraform's native handling of "defaults" for complex types (objects, maps).

The module merges input object with the object of default values where the input takes precedence over defaults.

## Quick Start

```terraform
module "defaults" {
    defaults = { 
        # Put the object with defaults here
    }

    input = {
        # Put the object with the input here
    }
}

output "out" {
    merged = module.defaults.output
}
```

## Example

#### Defaults

```terraform
{
    a = "b"
    c = "d"
    e = []
    f = {
        g = "h"
        k = "l"
    }
    m = {}
}
```

#### Input

```terraform
{
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
```

#### Module Output

Module generates output where values from the **Input** take precedence over values from **Defaults**.

```terraform
{
    a = "HELLO" # taken from Input
    c = "d" # coming from Defaults

    # All the rest are taken from Input
    e = [ 
        "some",
        "values"
    ]
    f = {}
    m = {
        n = "o"
    }
}
```

Enjoy!
