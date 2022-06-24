module "tfplan-functions" {
  source = "./modules/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./modules/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./modules/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source            = "./policies/enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "validate-providers-from-desired-regions" {
  source            = "./policies/validate-providers-from-desired-regions.sentinel"
  enforcement_level = "soft-mandatory"
}
