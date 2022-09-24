module "iti_network" {
  source   = "./network"
  vpc_cidr = var.vpc_cidr
  subnet1  = var.subnet1_public
  subnet2  = var.subnet2
  subnet3  = var.subnet3
  subnet4  = var.subnet4
  # module   = bara module
}

