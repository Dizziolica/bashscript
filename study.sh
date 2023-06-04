configu=$(ifconfig | grep ether | awk '{print $2}')

echo " Sua mensagem: $configu"


