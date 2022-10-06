#!/bin/sh
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Linkedin: https://www.linkedin.com/in/robson-vaamonde-0b029028/
# Instagram: https://www.instagram.com/procedimentoem/?hl=pt-br
# Github: https://github.com/vaamonde
# Data de criação: 06/10/2022
# Data de atualização: 06/10/2022
# Versão: 0.02
# Testado e homologado para a versão do pfSense 2.6.x e Plus 22.x
# Testado e homologado para a versão do SpeedTest 2.1.x
#
# Variáveis da Interface de Origem (Source) dos Testes do SpeedTest
# opção do comando grep: -w (word-regexp)
# opção do comando sed: -e (script), 
# expressão regular: s/ (substitui um trecho de texto por outro), [^] (Casa qualquer caractere, 
# exceto os listados), [[:space:]] (Espaço em branco), *// (O item anterior pode aparecer em 
# qualquer quantidade).
# opção do comando cut: -d (delimiter), -f (fields)
INTERFACE="em0"
SOURCE=$(ifconfig $INTERFACE | grep -w inet | sed -e 's/^[[:space:]]*//' | cut -d ' ' -f2)
DIRECTORYREPORT="/usr/local/www/speedtest"
PAGEREPORT="index.html"
#
# Criando o diretório do Relatório do SpeedTest
# opção do comando: echo: -e (interpretador de escapes de barra invertida)
# opção do comando if: [ ] = testa uma expressão, -d = testa se o diretório existe
if [ -d "$DIRECTORYREPORT" ]
	then
		echo -e "Diretório: $DIRECTORYREPORT - OK"
	else
		mkdir $DIRECTORYREPORT
		echo -e "Diretório: $DIRECTORYREPORT criado com sucesso!!!"
fi
#
# Criando o arquivo do Relatório do SpeedTest
# opção do comando: echo: -e (interpretador de escapes de barra invertida)
# opção do comando if: [ ] = testa uma expressão, -f = testa se o arquivo existe
# opção do comando speedtest: --csv-header (Print CSV headers)
if [ -f "$DIRECTORYREPORT/$PAGEREPORT" ]
	then
		echo -e "Arquivo $DIRECTORYREPORT/$PAGEREPORT - OK"
	else
		speedtest --csv-header > $DIRECTORYREPORT/$PAGEREPORT
		echo -e "Arquivo $DIRECTORYREPORT/$PAGEREPORT criado com sucesso!!!"
fi
#
# Gerando o Relatório do SpeedTest
# opção do comando speedtest: --secure (Use HTTPS instead of HTTP when communicating with
# speedtest.net operated servers), --source (Source IP address to bind to), --csv (Suppress 
# verbose output, only show basic information)
speedtest --secure --source=$SOURCE --csv >> $DIRECTORYREPORT/$PAGEREPORT
echo -e "Relatório do SpeedTest gerado com sucesso em: $DIRECTORYREPORT/$PAGEREPORT"