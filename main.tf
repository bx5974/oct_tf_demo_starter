resource "random_string" "datagen" {
	length = 30
}

resource "random_integer" "idnum" {
	min = 10
	max = 200
}

variable "sample" {
	description = "hello folks "
}

output "randint" {
	value = "${var.sample}-${random_integer.idnum.result}"
}

output "myrandstring" {
	value = random_string.datagen.result
}

output "locationout" {
	value = var.locationout
}
