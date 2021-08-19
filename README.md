# ALKE Docker Oviyam image #

## Run ##
```bash
docker run -it --rm -p 80:8080 -p 1025:1025 -v /oviyam:/usr/local/tomcat/work docker pull ghcr.io/murunwas/alke-oviyam:latest
```
* **-p 80:8080** Maps host port 80 to port 8080 in the container
* **-p 1025:1025** Port for DICOM Listener
* **-v /oviyam:/usr/local/tomcat/work** Maps the directory */oviyam* on the host system to */usr/local/tomcat/work* to allow configurations to be retained if Docker instance is teardown

Navigate to http://localhost
