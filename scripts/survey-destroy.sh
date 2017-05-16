#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
ID="591b39e728628e3fc95e6880"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
