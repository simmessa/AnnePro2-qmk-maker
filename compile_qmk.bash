#!/bin/bash

#find the AP container
RAN=`docker ps -a |grep ap2|head -n 1|awk '{print $1}'`

# if [ -z $RAN ]; then
#     docker run -it --env-file .env --name ap2 --entrypoint /home/dev/entry-qmk.bash ap2
# else
#     docker run -it --env-file .env --entrypoint /bin/bash ap2
# fi

docker run -it --env-file .env --entrypoint /home/dev/entry-qmk.bash ap2

#should check it ok to do this:
docker cp ap2-compile-qmk:/home/dev/annepro-qmk/.build/annepro2_${MODEL_LOW}_${KEYMAP}.bin .