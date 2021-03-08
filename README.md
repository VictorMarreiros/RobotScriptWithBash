# RobotScriptWithBash
Utilizando RobotFramework para outros fins huE

## Criando diretório do projeto
> mkdir C:/Projects
> mkdir C:/Projects/ScriptRobot

clone o projeto dentro da pasta ./ScriptRobot

> git clone https://github.com/VictorMarreiros/RobotScriptWithBash.git


## Instalando bibliotecas utilizadas

*Caso não possua o 'pip', instale o [python](https://www.python.org/downloads/) na sua maquina e siga para o primeiro passo. Obs: Na instalação marque a check-box para acrescentar o python ao path*

1. Entre na pasta do projeto pelo terminal/cmd e execute o comando
> python -m pip install -r ./requirements.txt


### Após a instalação das bibliotecas utilizadas, é necessário instalar as dependências do Robot Framework que fazem a  comunicação com o browser

Para isso, é necessário ter o gerenciador de bibliotecas do node.js 'npm' instalado na sua máquina.

*Caso não possua o 'npm', instale o [node.js](https://nodejs.org/en/download/current/) na sua maquina e siga para o próximo passo.*

Consulte se você possui o 'npm' instalado, rodando o seguinte comando no cmd/terminal:
> npm --version

2. Caso já possua o 'npm' instalado, execute o comando abaixo para instalar as dependências do robot que fazem a comunicação com o browser
> python -m rfbrowser init

*caso o comando acima não funcione, execute:*

> python -m Browser.entry init
