#!/bin/bash

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

echo 18 > /sys/class/gpio/export
echo 23 > /sys/class/gpio/export
echo 24 > /sys/class/gpio/export
echo 25 > /sys/class/gpio/export

echo out > /sys/class/gpio/gpio18/output
echo out > /sys/class/gpio/gpio23/output
echo out > /sys/class/gpio/gpio24/output
echo out > /sys/class/gpio/gpio25/output

echo 1 > /sys/class/gpio/gpio18/value
sleep 1
echo 1 > /sys/class/gpio/gpio23/value
sleep 1
echo 1 > /sys/class/gpio/gpio24/value
sleep 1
echo 1 > /sys/class/gpio/gpio25/value
sleep 1
echo 0 | tee /dev/rtled*
sleep 1
echo 1 | tee /dev/rtled*
sleep 2
echo 0 | tee /dev/rtled*
