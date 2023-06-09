
criar_usuario() {
    read -p "Digite o nome do novo usuário: " nome_usuario
    read -p "Digite o diretório home do novo usuário: " diretorio_usuario

    # Verifica se o usuário já existe
    if id "$nome_usuario" >/dev/null 2>&1; then
        echo "O usuário '$nome_usuario' já existe."
    else
        # Cria o novo usuário
        useradd -d "$diretorio_usuario" -m "$nome_usuario"
        echo "O usuário '$nome_usuario' foi criado com sucesso no diretório '$diretorio_usuario'."
    fi
}

# Função para remover um usuário
remover_usuario() {
    read -p "Digite o nome do usuário a ser removido: " nome_usuario

    # Verifica se o usuário existe
    if id "$nome_usuario" >/dev/null 2>&1; then
        # Remove o usuário
        userdel -r "$nome_usuario"
        echo "O usuário '$nome_usuario' foi removido com sucesso."
    else
        echo "O usuário '$nome_usuario' não existe."
    fi
}

# Menu de opções
echo "Selecione uma opção:"
echo "1. Criar novo usuário"
echo "2. Remover usuário"
read -p "Opção: " opcao

# Executa a ação com base na opção selecionada
case $opcao in
    1) criar_usuario ;;
    2) remover_usuario ;;
    *) echo "Opção inválida." ;;
esac

