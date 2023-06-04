contador=3

while [ $contador -gt 0 ]
do 
   echo "pikabu"
   sleep 3
   
   if [[ $contador -eq  1 ]]; then
	   echo "I see you"
   elif [[ $contador -eq 0  ]]; then
	   echo "I see you"

   fi
   contador=$((contador - 1))

done
