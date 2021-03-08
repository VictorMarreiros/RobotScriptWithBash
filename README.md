# RobotScriptWithBash
Utilizando RobotFramework para outros fins huE


## Instalando bibliotecas utilizadas
1. Entrar na pasta do projeto pelo terminal/cmd e rodar o comando
> python -m pip install -r ./requirements.txt


### Após a instalação das bibliotecas utilizadas, é necessário instalar as dependências do Robot Framework que fazem a  comunicação com o browser

Para isso, é necessário ter o gerenciador de bibliotecas do node.js 'npm' instalado na sua máquina. 
2. Consulte se você possui o 'npm' instalado, rodando o seguinte comando no cmd/terminal:
> npm --version

Caso não possua o 'npm' instalado, instale o [node.js](https://nodejs.org/en/download/current/) na sua maquina e siga para o próximo passo.

3. Caso já possua o 'npm' instalado, rode o comando abaixo para instalar as dependências do robot que fazem a comunicação com o browser
> python -m Browser.entry init
