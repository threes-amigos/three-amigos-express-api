#!/bin/bash

API="http://localhost:4741"
URL_PATH="/examples"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
TEXT="Test Text"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
