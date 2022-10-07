# use `gcloud beta billing accounts list`
# if you have too many accounts, check the Cloud Console :)
billing_account = {
  id              = "013DC7-EC4FAA-E90811"
  organization_id = 546434885099
}

# use `gcloud organizations list`
organization = {
  domain      = "endocodelab.com"
  id          = 546434885099
  customer_id = "C015e5sza"
}

outputs_location = "~/fast-config"

# use something unique and short
prefix = "edc-fast"

project_parent_ids = {
  automation = "folders/362184247726"
  billing    = "folders/362184247726"
  logging    = "folders/362184247726"
}