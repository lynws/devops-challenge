module "ec2_instance" {
  source = "git::https://github.com/lynws/terraform-modules.git//modules/ec2"

  access_token_secret = local.var.access_token_secret
  instance_type       = local.var.instance_type
  dockerhub_username  = local.var.dockerhub_username
  image_name          = local.var.image_name
  tag                 = local.var.tag
}
