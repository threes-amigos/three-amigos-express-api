#!/bin/bash
ID="591b39e728628e3fc95e6880"
API="http://localhost:4741"
URL_PATH="/surveys/${ID}"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
