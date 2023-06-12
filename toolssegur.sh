check_vulne() {
   echo "Verificando vulnerabilidades"
   echo "qual o nome do host?"
   read host1
   nmap -p- ${host1} 
}

update_packages() {
    echo "aperte 1 para fazer update , 2 para sair"
    read resposta
    case ${resposta} in
	    1)     
		   echo "qual pacote gostaria de fazer update"
	           read pacote
              
	  	   sudo apt-get --only-upgrade install ${pacote}

            ;;

            2)
	           echo "até breve"
		   exit 0

            ;;

	    *) 
	           echo "no compreendo"

            ;;

esac
}


security_audit() {
    check_vulne
    update_packages
    echo "Auditoria concluida"
}


security_audit
