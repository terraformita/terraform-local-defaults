# Handle Default Values on Complex Types

This module attempts to cover the temporary hole in Terraform's native handling of "defaults" for complex types (objects, maps).

The module merges input object with the object of default values where the input takes precedence over defaults.

## Quick Start

```terraform
module "defaults" {
    source  = "terraformita/defaults/local"
    version = "PUT_MODULE_VERSION_HERE"
    
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

Module generates output where values from the **input** take precedence over values from **defaults**.

```terraform
{
    a = "HELLO" # taken from input
    c = "d" # coming from defaults

    # All the rest are taken from input
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
