set -x

MY_INSTANCE_NAME="manhamprod"
ZONE=europe-west1-b

gcloud compute instances delete $MY_INSTANCE_NAME \
    --zone=$ZONE --delete-disks=all

gcloud compute firewall-rules delete default-allow-http-8080
