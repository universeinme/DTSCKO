# Script untuk stop container yg sedang berjalan

#!/bin/sh

echo -n "• Stopping Container:: "

sudo podman stop -f acme/jboss-eap

echo -n "• Container Stopped"

echo -n "• Removing Container: "

sudo podman rmi -f acme/jboss-eap

echo -n "• Container Removed"
