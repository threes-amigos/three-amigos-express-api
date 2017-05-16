#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
ID="591b8d13bb16d9a25a74596f"
TOKEN="1JZ4rI+se+5EJhxsji/V1DhJB5paWFMLQPIK1dPAzro=--3Gb9ibsaH1as7S81yw9cO10eAa+71MYI3++IfEEpIsA="
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
