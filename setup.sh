## This script automates the set up of the packer build environment to ensure all env vars are instantiated
#
if [ -z $(echo ${GRUB_PASSWORD}) ]
then
  read -p "Enter value for GRUB_PASSWORD: " GRUB_PASSWORD
  export GRUB_PASSWORD=${GRUB_PASSWORD}
fi

if [ -z $(echo ${GMAIL}) ]
then
  read -p "Enter value for GMAIL account: " GMAIL
  export GMAIL=${GMAIL}
fi

if [ -z $(echo ${HOSTNAME}) ]
then
  read -p "Enter value for HOSTNAME: " HOSTNAME
  export HOSTNAME=${HOSTNAME}
fi

if [ -z $(echo ${DOMAIN}) ]
then
  read -p "Enter value for DOMAIN: " DOMAIN
  export DOMAIN=${DOMAIN}
fi

if [ -z $(echo ${REGION}) ]
then
  read -p "Enter value for AWS REGION: " REGION
  export REGION=${REGION}
fi

if [ -z $(echo ${S3_BUCKET}) ]
then
  read -p "Enter value for S3_BUCKET: " S3_BUCKET
  export S3_BUCKET=${S3_BUCKET}
fi

if [ -z $(echo ${AWS_ACCESS_KEY_ID}) ]
then
  read -p "Enter value for AWS_ACCESS_KEY_ID: " AWS_ACCESS_KEY_ID
  export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
fi

if [ -z $(echo ${AWS_SECRET_ACCESS_KEY}) ]
then
  read -sp "Enter value for AWS_SECRET_ACCESS_KEY: " AWS_SECRET_ACCESS_KEY
  export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
  echo
fi

if [ -z $(echo ${GMAILPASSWORD}) ]
then
  read -sp "Enter value for GMAILPASSWORD: " GMAILPASSWORD
  export GMAILPASSWORD=${GMAILPASSWORD}
  echo
fi

if [ -z $(echo ${UBUNTUPASSWORD}) ]
then
  read -sp "Enter value for UBUNTUPASSWORD: " UBUNTUPASSWORD
  export UBUNTUPASSWORD=${UBUNTUPASSWORD}
  echo
fi

./init.sh