limite=90

uso=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)

if [ "$uso" -gt "$limite" ]; then

   echo "Atenção: O uso de disco atingiu ${uso}%!" | mail -s "Limite de espaço em disco excedido" carolmarques_7@hotmail.com
   echo "Notificação enviada"
else
   echo "O uso do disco esta dentro do limite"

fi 
