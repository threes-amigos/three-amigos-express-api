#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
TOKEN="1JZ4rI+se+5EJhxsji/V1DhJB5paWFMLQPIK1dPAzro=--3Gb9ibsaH1as7S81yw9cO10eAa+71MYI3++IfEEpIsA="
NAME="LMS Second Survey"
URL="Test URL"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "surveySchema": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'

echo
