#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
TOKEN="kJ4oKiWr7ra0yFJowFSg2TFidyU1ilziJXDcNoc0ZeA=--1y3UEL38wGTnUhRPI3JP9hMO6aWKyMXrhao1Z5xY/Kc="
QUESTION="MY Fourth Question to my survey"
QUESTIONNUMBER="4"
_SURVEY="591c84247cd6579770d5f234"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "question": {
      "question": "'"${QUESTION}"'",
      "questionNumber": "'"${QUESTIONNUMBER}"'",
      "_survey": "'"${_SURVEY}"'"
    }
  }'

echo
