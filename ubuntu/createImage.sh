# 1. Builds the cordova image with the ubuntu touch platform activated 
sudo docker build -t danielbeck/cordova-ubuntu .

# 2. Starts the image in the priviledged modus. Executes the shell in interactive mode. 
udo docker run -t -i --privileged=true danielbeck/cordova-ubuntu /bin/bash

# 3. Execute the following commands in the shell:
#cd /tmp && cordova create fakeapp && cd /tmp/fakeapp && cordova platform add ubuntu
#cd /root && click chroot -aarmhf -f ubuntu-sdk-14.10 create
#click chroot -aarmhf -f ubuntu-sdk-14.10 install libicu-dev:armhf  qtfeedback5-dev:armhf qtpim5-dev:armhf qtsystems5-dev:armhf
#cd /tmp/fakeapp && cordova build --device 
#cd ~/ && rm -rf /tmp/fakeapp

#sudo docker login
#sudo docker push danielbeck/cordova-ubuntu
#sudo docker run -t -i training/sinatra /bin/bash
#sudo docker commit -m "Executed chroot" -a "Daniel B d8425ef1966746ef117216de3862cc94cfc0ff389a1689ce109b7acbc8e85b6f danielbeck/ubuntu-inwork

