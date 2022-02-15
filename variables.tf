variable "input" {
    type = any
    default = {}
    description = "Input object to merge with defaults"
}

variable "defaults" {
    type = any
    default = {}
    description = "An object with default values"
}
