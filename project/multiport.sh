# Multi host dan port container

#!/bin/sh

echo -n "This will be run on ports : 8080, 9990 and 9999"

sudo podman run --name=acme/jboss-eap \

-d -p 127.0.0.1:8080:8080 \

-p 127.0.0.1:9990:9990 \

-p 127.0.0.1:9999:9999 \

acme/jboss-eap
