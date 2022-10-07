## This folder is used when you have configure using `output_location`
This is copied from my local `output_location`, (however, the *path* would be different on your local,) in each stage you will output the files here, then in the next stage you will link the files that was output from the last stage


Below is the outline of the output files generated by all stages, which is identical for both the GCS and local filesystem copies:

```bash
[path specified in outputs_location]
├── providers
│   ├── 00-bootstrap-providers.tf
│   ├── 01-resman-providers.tf
│   ├── 02-networking-providers.tf
│   ├── 02-security-providers.tf
│   ├── 03-project-factory-dev-providers.tf
│   ├── 03-project-factory-prod-providers.tf
│   └── 99-sandbox-providers.tf
└── tfvars
│   ├── 00-bootstrap.auto.tfvars.json
│   ├── 01-resman.auto.tfvars.json
│   ├── 02-networking.auto.tfvars.json
│   └── 02-security.auto.tfvars.json
└── workflows
    └── [optional depending on the configured CI/CD repositories]
```
- `00-bootstrap*` will be generated when you go through the 00-bootstap stage and do as the doc instructed.

### From 01-resman onward, you can create and link the output files like this example: 
#### Configure output example on 01-resman:

```bash
cd ../00-bootstrap
terraform output -json providers | jq -r '.["01-resman"]' \
  > ~/fast-config/providers/01-resman-providers.tf

terraform output -json tfvars > ~/fast-config/tfvars/01-resman.auto.tfvars.json
```
Link the files:
```bash
cd ../01-resman
# `outputs_location` is set to `~/fast-config`
ln -s ~/fast-config/tfvars/globals.auto.tfvars.json .
ln -s ~/fast-config/tfvars/00-bootstrap.auto.tfvars.json .
ln -s ~/fast-config/providers/01-resman-providers.tf .

```

- The steps are the same in the next stages, you just need to change the file name accordingly.
- You can still create `terraform.tfvars` if you have custom vars, it might require some code changes and remember to add it to variables.
