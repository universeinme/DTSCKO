# Build Container

#!/bin/sh

cd .. && \
cd project && \
sudo podman build --tag=acme/jboss-eap .
