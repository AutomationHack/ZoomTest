SITE_URL=$1
EMAIL=$2
PASS=$3

npm i -g @pnp/office365-cli
o365 version

# you have to run "o365 spo login https://contoso.sharepoint.com"
# to agree with the consent first time

o365 spo login $SITE_URL --authType password --userName $EMAIL --password $PASS

o365 spo app add --filePath "C:/Program Files/nodejs/TestSolution/sharepoint/solution/test-solution.sppkg" --overwrite --verbose
