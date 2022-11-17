#!/bin/sh
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Linkedin: https://www.linkedin.com/in/robson-vaamonde-0b029028/
# Instagram: https://www.instagram.com/procedimentoem/?hl=pt-br
# Github: https://github.com/vaamonde
# Data de criação: 17/11/2022
# Data de atualização: 17/11/2022
# Versão: 0.01
# Testado e homologado para a versão do pfSense 2.6.x e Plus 22.x
# Testado e homologado para a versão do iPerf 3.x
#
# OBSERVAÇÃO IMPORTANTE: para os script em Shell funcionar corretamente no agendamento do CRON
# é recomendado que todos os comandos sejam declarados utilizando o caminho absoluto, com isso
# o agendamento no pfSense funciona corretamente.
#
# Variáveis das Interfaces de Origem (Source) dos Testes do iPerf
# opção do comando grep: -w (word-regexp)
# opção do comando sed: -e (script), 
# expressão regular: s/ (substitui um trecho de texto por outro), [^] (Casa qualquer caractere, 
# exceto os listados), [[:space:]] (Espaço em branco), *// (O item anterior pode aparecer em 
# qualquer quantidade).
# opção do comando cut: -d (delimiter), -f (fields)
DIRECTORYREPORT="/usr/local/www/iperf"
#
# Caso queira criar o monitoramento do iPerf para outras Interfaces WAN, recomendo copiar
# o bloco de variáveis abaixo e alterar o valor da Interface e o Número de referência.
INTERFACE01="em0"
SOURCE01=$(/sbin/ifconfig $INTERFACE01 | /usr/bin/grep -w inet | /usr/bin/sed -e 's/^[[:space:]]*//' | /usr/bin/cut -d ' ' -f2)
DESCRIPTION01=$(/sbin/ifconfig $INTERFACE01 | /usr/bin/grep -w description | /usr/bin/sed -e 's/^[[:space:]]*//' | /usr/bin/cut -d ' ' -f2)
PAGEREPORT01=$DESCRIPTION01.html
#
# Exemplo da Segunda Interface WAN de Monitoramento do iPerf, só descomentar e alterar o
# valor da variável Interface com o nome correto que o pfSense atribuiu a Interface
#INTERFACE02="em1"
#SOURCE02=$(/sbin/ifconfig $INTERFACE02 | /usr/bin/grep -w inet | /usr/bin/sed -e 's/^[[:space:]]*//' | /usr/bin/cut -d ' ' -f2)
#DESCRIPTION02=$(/sbin/ifconfig $INTERFACE02 | /usr/bin/grep -w description | /usr/bin/sed -e 's/^[[:space:]]*//' | /usr/bin/cut -d ' ' -f2)
#PAGEREPORT02="$DESCRIPTION02.html"
#
# Criando o diretório dos Relatórios do iPerf
# opção do comando: echo: -e (interpretador de escapes de barra invertida)
# opção do comando if: [ ] = testa uma expressão, -d = testa se o diretório existe
if [ -d "$DIRECTORYREPORT" ]
	then
		echo -e "Diretório: $DIRECTORYREPORT - OK"
	else
		/bin/mkdir $DIRECTORYREPORT
		echo -e "Diretório: $DIRECTORYREPORT criado com sucesso!!!"
fi
#
# Gerando o Relatório do iPerf da Interface WAN
# opção do comando: echo: -e (interpretador de escapes de barra invertida)
# opção do comando iperf3: 
#
# Para criar o relatório de outra Interface WAN do iPerf, recomendo copiar o bloco
# abaixo e alterar o Source e Pagereport com base nas variáveis acima.
/usr/local/bin/iperf3 $DIRECTORYREPORT/$PAGEREPORT01
echo -e "Relatório do iPerf gerado com sucesso em: $DIRECTORYREPORT/$PAGEREPORT01"
#
# Exemplo do relatório da segunda Interface WAN do iPerf
#/usr/local/bin/iperf3 $DIRECTORYREPORT/$PAGEREPORT02
#echo -e "Relatório do iPerf gerado com sucesso em: $DIRECTORYREPORT/$PAGEREPORT02"