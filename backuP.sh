
origem="/home/vboxuser/venv"

destino="/home/vboxuser"


nome_backup="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

tar -zcvf "$destino/$nome_backup" "$origem" 2>/dev/null

if [ $? -eq 0 ]; then
  echo "Backup criado com sucesso: $destino/$nome_backup"
else
  echo "Falha ao criar o backup!"
fi

