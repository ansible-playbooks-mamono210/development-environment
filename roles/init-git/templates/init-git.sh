redmine_ip=$(gcloud compute instances describe redmica-osaka --format='get(networkInterfaces[0].accessConfigs[0].natIP)' --zone=asia-northeast2-a)

echo "Old Redmine IP: ${REDMINE_IP}"

echo "New Redime IP: $redmine_ip"

echo "execute 'source ~/.bash_profile'"

sed -i -e "s/export REDMINE_IP=.*/export REDMINE_IP=$redmine_ip/g" .bash_profile
