<br />
<div align="center">
  <a href="https://github.com/Dizziolica/Utility/blob/main/ligacao.py">
    <img src="/dizziolica.jpg" alt="Logo" width="80" height="80">
  </a>


<h1 align="center">Bash Script </h1>

<p align="center">Breve descrição do projeto.</p>

<br>

## 📋 Table of Contents

- [Sobre](#sobre)
- [Requisitos](#requisitos)
- [Instalação](#instalação)
- [Como usar](#como-usar)
- [Exemplos](#exemplos)
- [Contribuição](#contribuição)
- [Licença](#licença)

<br>

## 📖 Sobre

Este repositório contém exemplos de Bash Script que trabalham com os conceitos fundamentais da linguagem, como `while`, `if`, `for` e comandos da linha de comando.

<br>

## ✅ Requisitos

- Bash 

<br>

## ⚙️ Instalação

1. Clone este repositório:

```bash
git clone https:https://github.com/Dizziolica/bashscript.git
Navegue até o diretório do projeto:
bash
Copy code
cd nome-do-repositorio

<br>

📝 Exemplos
Aqui estão alguns exemplos de uso dos scripts:
#verifica os urls indicados estão ativos

for x in google.com bing.com facebook.com 
do 
  if ping -q -c 2 -W 1 $x > /dev/null; then
     echo "$x is up"
  else
     echo "$x is down"
  fi 
done

#mostra apenas a informação desejada contida no ifconfig

configu=$(ifconfig | grep ether | awk '{print $2}')

echo " Sua mensagem: $configu"


<br>

🤝 Contribuição
Contribuições são bem-vindas! Se você quiser melhorar este projeto, siga as etapas abaixo:

Fork este repositório
Crie um branch com sua feature (git checkout -b feature/MinhaFeature)
Faça o commit das suas alterações (git commit -am 'Adicionei uma feature')
Envie para o branch (git push origin feature/MinhaFeature)
Abra um Pull Request
<br>
📄 

Copy code




