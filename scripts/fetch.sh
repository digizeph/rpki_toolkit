#!/bin/bash

# Fetch all RPKI repos from RIR

#mkdir -p afrinic/{repository,member_repository} apnic/{repository,member_repository} arin lacnic ripe/{ta,repository}
mkdir -p afrinic apnic arin lacnic ripe

echo "Fetching AFRINIC ..."
rsync -r -a -v --delete rsync://rpki.afrinic.net/repository ./afrinic/repository
rsync -r -a -v --delete rsync://rpki.afrinic.net/member_repository ./afrinic/member_repository

echo "Fetching APNIC ..."
rsync -r -a -v --delete rsync://rpki.apnic.net/repository ./apnic/repository
rsync -r -a -v --delete rsync://rpki.apnic.net/member_repository ./apnic/member_repository

echo "Fetching ARIN ..."
rsync -r -a -v --delete rsync://rpki.arin.net/repository/ ./arin

echo "Fetching LACNIC ..."
rsync -r -a -v --delete rsync://repository.lacnic.net/rpki/ ./lacnic

echo "Fetching RIPE ..."
rsync -r -a -v --delete rsync://rpki.ripe.net/ta/ ./ripe/ta
rsync -r -a -v --delete rsync://rpki.ripe.net/repository/ ./ripe/repository

echo "Finished!"
