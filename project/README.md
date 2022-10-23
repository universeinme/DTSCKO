# **Tugas DTS**


### Redhat Containers Engineer Specialist


I. Build image jboss-eap-6.4.0


**Image harus jadi dengan nama acme/jboss-eap**


- podman login registry.redhat.io


- bikin containerfile


- Build Image


	nama/tag : acme/jboss-eap


	`sudo podman build --tag=acme/jboss-eap .`


- Cek Image yg sudah di build


	`sudo podman images`


- Run Images


	`sudo podman run -it --rm -p 8080:8080 -p 9990:9990 -p 9999:9999 --name acme/jboss-eap`


- Check The App


	`curl 127.0.0.1:8080/`

	 `Buka Browser, kemudian masukan alamat 127.0.0.1:8080/`

II. Membuat Script manage container

- Stop dan Remove acme/jboss-eap container

```
#!/bin/sh
sudo podman stop -a
sudo podman rm -f acme/jboss-eap
```

- Publish Multi Custom Port

```
# Multi host dan port container

#!/bin/sh

echo -n "This will be run on ports : 8080, 9990 and 9999"

sudo podman run --name=acme/jboss-eap \

-d -p 8080:8080 \

-p 9990:9990 \

-p 9999:9999 \

--name jboss acme/jboss-eap
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

- buat repo baru di registry (quay.io) ( nama repo harus sama dengan nama tag )

- Membuat tag baru sesuai dengan repo registry

	`sudo podman tag acme/jboss-eap:custom quay.io/nama_user_di_registry/acme/jboss-eap:custom`
	
- publish ke registry

	`sudo podman push quay.io/nama_user_di_registry/acme/jboss-eap:custom`

IV. Backup / Restore ke tar file

- Backup


	`sudo podman load -o jboss-eap-custom.tar acme/jboss-eap:custom` 

- Restore

	`sudo podman load -i jboss-eap-custom.tar`



