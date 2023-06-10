diretorio="/var/log/syslog"

padroes=("network" "update" "eth0")

tamanho=${#padroes[@]}
verificar_log() {

    for ((i=0; i<tamanho; i++))
    do
         padrao="${padroes[i]}"

         if grep -q "${padrao}" "${diretorio}"; then
             echo "Atividade suspeita encontrada: ${padrao}"
             echo "${resultado}"
         fi

    done

}

verificar_log





