# Membuat 10 log terakhir

#!/bin/sh

echo -n "Menampilkan 10 log terakhir"

sudo podman logs --tail=10 acme/jboss-eap
