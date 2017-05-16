#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
TOKEN="1JZ4rI+se+5EJhxsji/V1DhJB5paWFMLQPIK1dPAzro=--3Gb9ibsaH1as7S81yw9cO10eAa+71MYI3++IfEEpIsA="
QUESTION="MY Second Question to my survey"
QUESTIONNUMBER="3"
_SURVEY="591b8c8abb16d9a25a74596d"
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
