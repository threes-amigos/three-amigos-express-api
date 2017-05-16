#!/bin/bash
ID="591b8945ed6dde9e6bcf1298"
API="http://localhost:4741"
URL_PATH="/questions/${ID}"
TOKEN="1JZ4rI+se+5EJhxsji/V1DhJB5paWFMLQPIK1dPAzro=--3Gb9ibsaH1as7S81yw9cO10eAa+71MYI3++IfEEpIsA="
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
