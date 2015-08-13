# For AT&T 340U modem
#
while true
do
  # Change /dev/ttyUSB0 to your USB device number
  echo -n "at+cfun=1" > /dev/ttyUSB0
  # Check connection every 60 seconds
  sleep 60
done
