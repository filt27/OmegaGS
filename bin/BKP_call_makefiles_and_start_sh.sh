#!/bin/bash


echo "########################### Change spidev0.1 to spidev0.0"
sed -i '0,/spidev0.1/s//spidev0.0/' /opt/ttn-gateway/lora_gateway/libloragw/inc/imst_rpi.h
sed -i '0,/spidev0.1/s//spidev0.0/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_spi.native.c
sed -i '0,/spidev0.1/s//spidev0.0/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_hal.c
sed -i '0,/spidev0.1/s//spidev0.0/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_reg.c
sed -i '0,/spidev0.1/s//spidev0.0/' /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/src/poly_pkt_fwd.c



echo "###########################/opt/ttn-gateway/lora_gateway/libloragw/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/libloragw/ -f Makefile

echo "###########################/opt/ttn-gateway/lora_gateway/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/ -f Makefile

echo "########################### Change spidev0.1 to spidev0.0"
sed -i '0,/spidev0.0/s//spidev0.1/' /opt/ttn-gateway/lora_gateway/libloragw/inc/imst_rpi.h
sed -i '0,/spidev0.0/s//spidev0.1/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_spi.native.c
sed -i '0,/spidev0.0/s//spidev0.1/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_hal.c
sed -i '0,/spidev0.0/s//spidev0.1/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_reg.c
sed -i '0,/spidev0.0/s//spidev0.1/' /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/src/poly_pkt_fwd.c

lxterminal --command = "echo "###########################/opt/ttn-gateway/lora_gateway/libloragw/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/libloragw/ -f Makefile

echo "###########################/opt/ttn-gateway/lora_gateway/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/ -f Makefile"


echo "############################"
echo "############################"
echo "Starting start.sh script"
sudo ./start.sh





