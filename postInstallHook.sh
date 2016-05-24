#!/bin/bash

baseUrl="http://localhost:4502"
password="admin:admin"

echo "uploading optional packages"
for file in /aem/packages/*
do
  curl --user $password -F file=@"$file" -F name="$file" -F force=true -F install=true $baseUrl/crx/packmgr/service.jsp
done
