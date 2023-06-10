programas=("spotify" "inkscape" "retroarch")

instalar_programa() {
    programa=$1
    echo "Instalando o programa: ${programa}"

    case ${programa} in 
         "spotify")
             sudo apt-get install -y ${programa}
             ;;
         "inkscape")
             sudo apt-get install -y ${programa}
             ;;
         "retroarch")
             sudo pt-get install -y ${programa}
             ;;
         *)
             echo "programa desconhecido:${programa}"
             ;;

   esac  

 }

for programa in "${programas[@]}"; do
    instalar_programa "${programa}"
done

echo "Instalação do programa concluida!"
