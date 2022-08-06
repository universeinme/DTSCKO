# Multi host dan port container

#!/bin/sh

sudo podman run --name=jboss-eap -d -p \

hostip1:hostport1:containerport1 \

-p hostip2:hostport2:containerport2 \

-p hostip3:hostport3:containerport3 \

acme/jboss-eap
