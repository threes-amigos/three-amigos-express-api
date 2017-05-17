#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
<<<<<<< HEAD
TOKEN="uKgaoOvRMwvkVCfJGLNWalHhw55AoIR2aIyTkI0Ducc=--tK/Ixggd/JGrZYWzuXkGH5oVxuwI9cMQKl+GyHnVg5M="
QUESTION="MY First Question to my survey"
QUESTIONNUMBER="1"
_SURVEY="591b54e7f8a27f5d0daee062"
=======
TOKEN="kJ4oKiWr7ra0yFJowFSg2TFidyU1ilziJXDcNoc0ZeA=--1y3UEL38wGTnUhRPI3JP9hMO6aWKyMXrhao1Z5xY/Kc="
QUESTION="MY Fourth Question to my survey"
QUESTIONNUMBER="4"
_SURVEY="591c84247cd6579770d5f234"
>>>>>>> tony-customRoute
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
