#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"

EMAIL=lmslms@lisa.com
PASSWORD=l
PASSWORD=l

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
