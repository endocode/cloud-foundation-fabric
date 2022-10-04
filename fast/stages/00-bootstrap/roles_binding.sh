export FAST_BILLING_ORG_ID=546434885099
export FAST_ROLES=(roles/billing.admin roles/resourcemanager.organizationAdmin)
for role in $FAST_ROLES; do
  gcloud organizations add-iam-policy-binding $FAST_BILLING_ORG_ID \
    --member user:$FAST_BU --role $role
done