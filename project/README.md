# **Tugas DTS**


### Redhat Containers Engineer Specialist


I. Build image jboss-eap-6.4.0


**Image harus jadi dengan nama acme/jboss-eap**


- podman login


- bikin containerfile


- Build Image


	nama/tag : acme/jboss-eap


	`sudo podman build --tag=acme/jboss-eap .`


- Cek Image yg sudah di build


	`sudo podman images`


- Run Images


	`sudo docker run -it acme/jboss-eap`


- Check The App


	`curl 127.0.0.1:8080/`

	 `Buka Browser, kemudian masukan alamat 127.0.0.1:8080/`

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


III. Re-tag image jboss-eap:latest ke jboss-eap:custom

	`sudo podman tag acme/jboss-eap acme/jboss-eap:custom`

IV. Publish jboss-eap:custom ke public registry

- login ke registry

	`sudo podman login registry.com`

- buat repo baru di registry ( nama repo harus sama dengan nama tag )

- publish ke registry


	`sudo podman tag acme/jboss-eap:custom quay.io/nama_user_di_registry/acme/jaboss-eap:custom`

IV. Backup / Restore ke tar file

- Backup


	`sudo podman -o jboss-eap-custom.tar acme/jboss-eap:custom` 

- Restore

	`sudo podman load -i jboss-eap-custom.tar`



