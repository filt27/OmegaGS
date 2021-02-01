#! /bin/bash

gnome-terminal -x bash -c "sudo bash 1_2_to_0_0.sh; exec bash; read"

sleep 40s

gnome-terminal -x bash -c "sudo bash 0_0_to_0_1.sh; exec bash; read"

sleep 40s

gnome-terminal -x bash -c "sudo bash 0_1_to_1_1.sh; exec bash; read"

sleep 40s

gnome-terminal -x bash -c "sudo bash 1_1_to_1_2.sh; exec bash; read"