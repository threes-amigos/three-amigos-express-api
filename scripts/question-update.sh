#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
ID="591b64c57ae9648233c6d73f"
TOKEN="1JZ4rI+se+5EJhxsji/V1DhJB5paWFMLQPIK1dPAzro=--3Gb9ibsaH1as7S81yw9cO10eAa+71MYI3++IfEEpIsA="
QUESTION="FIRST UPDATE TO A question"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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

# only updating the question
# ,
# "questionNumber": "'"${QUESTIONNUMBER}"'",
# "_survey": "'"${_SURVEY}"'"
