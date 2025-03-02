#!/bin/bash
yum install git* -y
cd /
git clone https://github.com/Adiykarr/online-shopping-system-advanced.git
chmod 777 /online-shopping-system-advanced/1st-step.sh
chmod 777 /online-shopping-system-advanced/2nd-step.sh
cd /online-shopping-system-advanced
./1st-step.sh
./2nd-step.sh
echo "Hello Sir!, The deployment is successful & website! is ready" > congratulations.txt
