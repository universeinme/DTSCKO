# **Tugas DTS**

### Redhat Containers Engineer Specialist


II. Membuat Script manage container

- Stop dan Remove acme/jboss-eap

```
#!/bin/sh
sudo podman stop -f acme/jboss-eap
sudo podman rmi -f acme/jboss-eap
```

- Publish Multi Custom Port

```
#!/bin/sh

sudo podman run --name=acme/jboss-eap -d \

-p hostip1:hostport1:containerport1 \

-p hostip2:hostport2:containerport2 \

-p hostip3:hostport3:containerport3 \

acme/jboss-eap
```

- Generate 10 log terakhir

```
#!/bin/sh

sudo podman logs --tail=10 acme/jboss-eap
```
