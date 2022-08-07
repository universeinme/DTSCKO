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

II. Re-tag image jboss-eap

- jboss-eap:custom

- jboss-eap:latest

III. Publish jboss-eap:custom ke public registry

IV. Backup / Restore ke tar file

- Backup

- Restore
