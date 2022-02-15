variable "input" {
    type = object(any)
    default = {}
    description = "Input object to merge with defaults"
}

variable "defaults" {
    type = object(any)
    default = {}
    description = "An object with default values"
}
