reiniciar_servico() {
     echo "Qual serviço você quer reiniciar?"
     read servico
     echo "Reiniciando o serviço ${servico}"
     sudo systemctl restart ${servico}
}

parar_servico() {
     echo "Qual serviço você quer reiniciar?"
     read servico
     echo "Reiniciando o serviço ${servico}"
     sudo systemctl stop  ${servico}
}


limpar_caches() { 
     echo "limpando caches"
     rm -rf /var/caches/*
     echo "cache limpos"
}

reparar_permissoes() { 
      echo "Reparando permissões"
      echo " qual usuario, grupo  gostaria de remover?"
      read usuario grupo
      echo "em qual diretorio pertencem?"
      read diretorio
      sudo chown -R ${usuario}:${grupo} /${diretorio}
}

reparar_dono() {
      echo "Reparando permissões"
      echo " qual o nome do novo dono?"
      read usuario 
      echo "em qual diretorio pertencem?"
      read diretorio
      sudo chown  ${usuario} ${diretorio}
}

reparar_grupo() {
      echo "Reparando permissões"
      echo " qual sera o novo nome do grupo?"
      read usuario grupo
      echo "em qual diretorio pertencem?"
      read diretorio
      sudo chgrp  ${grupo} ${diretorio}
}



echo "Qual toool queres? Pressione 1 caso seja para Limpar cache, Pressione 2 para  reparar Permissões, pressione 3 para mudar dono, pressione 4 para mudar o nome do grupo,  Pressione 5  para reiniciar um serviço,
pressione 6 para parar um serviço"
read answer
case ${answer} in
	1)
		limpar_caches
	        ;;

        2)
		reparar_permissoes
	        ;;
        
        3)
		reparar_dono
		;;
	4)
		reparar_grupo
		;;
	5)
		reiniciar_servicos
		;;
	
	6)
		parar_servicos
		;;

	*) 
		echo " não ha essa opção"
		;;

esac

