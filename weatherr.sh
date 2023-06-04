for x in $(cat arquivo.txt)
do 
  weather=$(curl -s wttr.in/$x?m2&lang=nl)
  echo "The weather for $weather"
done
