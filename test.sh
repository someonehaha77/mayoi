cd /home
touch index.php
php -S 0.0.0.0:8080 &
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  sleep 5
done
