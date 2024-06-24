locals {
  default_vars          = {}
  tfsettingsfile        = "../../config.yaml"
  tfsettingsfilecontent = fileexists(local.tfsettingsfile) ? file(local.tfsettingsfile) : " NoSettingsFileFound: true"
  tfworkspacesettings   = yamldecode(local.tfsettingsfilecontent)
  var                   = merge(local.default_vars, local.tfworkspacesettings)
}