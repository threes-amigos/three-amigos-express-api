#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
TOKEN="uKgaoOvRMwvkVCfJGLNWalHhw55AoIR2aIyTkI0Ducc=--tK/Ixggd/JGrZYWzuXkGH5oVxuwI9cMQKl+GyHnVg5M="
QUESTION="MY First Question to my survey"
QUESTIONNUMBER="1"
_SURVEY="591b54e7f8a27f5d0daee062"
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
