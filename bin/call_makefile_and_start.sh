#! /bin/bash

echo "###########################/opt/ttn-gateway/lora_gateway/libloragw/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/libloragw/ -f Makefile

echo "###########################/opt/ttn-gateway/lora_gateway/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/ -f Makefile


echo "############################"
echo "############################"
echo "Starting start.sh script"
sudo ./start.sh