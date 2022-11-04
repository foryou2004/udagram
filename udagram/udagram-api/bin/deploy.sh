set -x
set -e

eb init udagram-app --platform node.js --region us-east-1 &&
eb use udagram-env && eb setenv PORT=$PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST JWT_SECRET=$JWT_SECRET && eb deploy