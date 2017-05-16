#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
TOKEN="UEeYUEVdfaHctQ2CjcYGI1MF/LJns61HR+DrqlRxGxg=--SVUf4ei4rrAzkRQd3bV4U2KtHb3Lm+BTn4zz9ESF4Zc="
NAME="LMS First Survey"
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
