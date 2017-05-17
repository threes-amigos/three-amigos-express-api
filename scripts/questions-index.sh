#!/bin/bash
ID="591c84247cd6579770d5f234"
API="http://localhost:4741"
URL_PATH="/questionsbysurvey"
TOKEN="kJ4oKiWr7ra0yFJowFSg2TFidyU1ilziJXDcNoc0ZeA=--1y3UEL38wGTnUhRPI3JP9hMO6aWKyMXrhao1Z5xY/Kc="
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey": {
      "id": "'"${ID}"'"
    }
  }'

echo
