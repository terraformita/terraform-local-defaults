# Example

Visit [`examples`](https://github.com/terraformita/terraform-local-defaults/tree/main/examples/complete) in GitHub repo to see full source code. Below is a quick explanation of the example module calls:

```terraform
module "non_null" {
  # Merges non-null input with non-null defaults.
  # Expected outcome: merge(defaults, input) where data from input takes precedence
}

module "all_null" {
  # Merges two null structures (input, defaults)
  # Expected outcome: empty object({})
}

module "null_defaults" {
  # Merges non-null input with null defaults.
  # Expected outcome: defaults
}

module "null_input" {
  # Merges null input with non-null defaults.
  # Expected outcome: input
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
```
