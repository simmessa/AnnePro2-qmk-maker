#!/bin/bash
cd /home/dev/annepro-qmk; sudo -H -u dev git pull --ff-only
if [ -f "/home/dev/annepro-qmk/keyboards/annepro2/config.h" ]; then
    # This file will produce warnings and stop the build, so we delete it if it's there
    rm /home/dev/annepro-qmk/keyboards/annepro2/config.h
fi
cd /home/dev/annepro-qmk && make -Wno-error annepro2/${MODEL_LOW}:${KEYMAP}

# if [ ! -d "/home/dev/annepro-qmk" ]; then
#     #1st time clone
#     cd /home/dev; sudo -H -u dev git clone https://github.com/qmk_firmware/AnnePro2-Shine.git --recursive --depth 1 && cd AnnePro2-Shine && make MODEL=${MODEL}
# fi
# cp /home/dev/annepro-qmk/.build/annepro2_${MODEL_LOW}_simmessa.bin /home/dev/
# cp /home/dev/AnnePro2-Shine/build/annepro2-shine-${MODEL}.bin /home/dev/