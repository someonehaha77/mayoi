cd /home
touch index.php
php -S 0.0.0.0:8080 &
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  read -t 5 -p "I am going to wait for 5 seconds only ..."
done
