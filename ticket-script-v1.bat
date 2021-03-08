title Script para facilitar a vida
@echo off
cls
:menu
cls
color 80

date/t

echo Computador: %computername% 		Usuario: %username%
echo
echo 			MENU TAREFAS
echo  ==================================
echo * 1. Abrir Ticket - Revenda 		*
echo * 2. Sair						    *
echo  ==================================


set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% GEQ 3 goto opcao3


:opcao1
title Abrir ticket - Revenda
set /P id_cli=Informe o ID Cliente: 
python -m robot --variable id_cliente:%id_cli% C:/Projects/ScriptRobot/ticket-revenda.robot
pause
goto menu


:opcao2
title Sair
cls
exit()


:opcao3
title Opcao invalida!
echo ===============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ===============================================
pause
goto menu
