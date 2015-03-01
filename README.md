# physalis_cordova
Docker build-files for Apache Cordova 



## Ubuntu
Create a ubuntu physalis image as follows:
 * build the image: docker build -t physalis_ubuntu .
 * execute aarmhf *as priviledged user*. This must be done because it isn't possible to build images as priviledged user:.
	  *  docker run  physalis_ubuntu -it /bin/bash -t physalis_dsfd
	  * /bin/bash> exxx....
	  
* create a new image from the container:

* Now its possible to add it to docker hub. 


* Finally, everyone can execute the docker machine as follows: 



	  
