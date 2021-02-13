# Curso GRÁTIS de Firewall e Proxy Netgear pfSense NG UTM 2.x

## 💰 Ajude o projeto Bora para Prática a continuar fazendo vídeos gratuitos para o Canal, acessando o link de doação do PagSeguro: https://pag.ae/bjlSJcH

Robson Vaamonde<br>
Procedimentos em TI: http://procedimentosemti.com.br<br>
Bora para Prática: http://boraparapratica.com.br<br>
Robson Vaamonde: http://vaamonde.com.br<br>
Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
Facebook Bora para Prática: https://www.facebook.com/boraparapratica<br>
Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>

Esse curso tem como objetivo demonstrar a instalação e configuração do Firewall NG Netgear pfSense (versões superiores a 2.x) em máquina Virtual utilizando o Oracle VirtualBOX para simular um ambiente corporativo de Pequeno e Médio Porta, utilizando os principais recursos de Firewall, Proxy, VPN, etc...

O pfSense é open source, licenciado sob BSD license, baseado no sistema operacional FreeBSD e adaptado para assumir o papel de um firewall e/ou roteador de redes.

Ideal para Estudantes e Profissionais de Redes que desejam se aprofundar nos pré-requisitos técnicos e práticos para Implementar Servidores GNU/Linux Ubuntu Server em cenários On-Premise ou Cloud.

## **Links Oficiais do Ubuntu, Mint, pfSense, Microsoft e VirtualBOX:**
Linux Mint: https://www.linuxmint.com/<br>
pfSense: https://www.pfsense.org/<br>
Oracle VirtualBOX: https://www.virtualbox.org/

## **Playlist do YouTUBE com todos os Vídeos do pfSense:**
Link da Playlist: https://www.youtube.com/playlist?list=PLozhsZB1lLUN7vHnCDA2NF6rMfTBs-vAs

## **COMO instalar o UTM/NGFW pfSENSE FIREWALL v2.4.4 no Oracle VirtualBOX**

Vídeo mostrando os procedimentos básicos para instalar o UTM (Unified Threat Management) pfSENSE Firewall v2.4.4 no Oracle VirtualBOX

O UTM pfSENSE e umas melhores soluções Open Source de Firewall, Proxy, Router, etc do momento, licenciado sob BSD license, baseado no sistema operacional FreeBSD e adaptado para assumir o papel de um firewall e/ou roteador de redes. Ele possui recursos que muitas vezes, só encontrada em Firewall comerciais caros, já que podemos realizar com o pfSense a imensa maioria das atividades que esperamos de sistemas com este título.

Hoje o pfSense também pode ser considerado um NGFW (Next Generation Firewall), possibilitando a integração de serviços como: Firewall, Proxy, Antivírus, IDS/IPS, Balanceamento de Carga, Relatórios e Inspeção Profunda de Pacotes (DPI).

Link da vídeo aula: https://www.youtube.com/watch?v=N-Cbq1AaEyM

## **CONHECENDO o console do UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para utilizar o Console do UTM pfSense

A ferramenta de console do UTM pfSense permite fazer algumas configurações rápidas do sistema, principalmente a parte de atribuição (associação) das interfaces, configurações do endereçamento IPv4 ou IPv6 da WAN, LAN, etc, Reset de Senha e Configurações, Restore de Backup, atualização do sistema, monitoramento e acesso ao Bash/Shell do UTM pfSense.

O console do UTM pfSense é a primeira etapa da configuração do sistema, raramente será utilizado com muita frequência, todas as configurações principais e administração são feitas no WebConfigurator (WebGUI).

Link da vídeo aula: https://www.youtube.com/watch?v=rKef7WePAk0

## **CONHECENDO o WEBGUI WEBCONFIGURATOR do UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para utilizar o WebGUI (Graphics User Interface) WebConfigurator do UTM pfSensse Firewall

A ferramenta de WebGUI - WebConfigurator do UTM pfSense permite fazer todas as configurações básicas e avançadas, toda a administração, gerenciamento, monitoramento, atualização e segurança será feita utilizando o WebGUI. Após a instalação do pfSense e suas configurações básicas via Console, precisamos acessar o WebGUI para finalizar a instalação.

Recomendações: Recomendo utilizar o Navegador de Web Mozilla Firefox, que tem uma maior compatibilidade com soluções Open Source: https://www.mozilla.org/pt-BR/firefox/, em nosso exemplo, vamos acessar o servidor com endereço IPv4: http://172.16.10.254, nos próximos vídeos vou mostrar como configurar o ambiente para trabalhar com HTTPS, Usuário padrão do pfSense é: admin, e senha padrão é: pfsense.

Informações extras:
PPPoE: https://pt.wikipedia.org/wiki/PPPoE
PPP: https://pt.wikipedia.org/wiki/Point-to-Point_Protocol
PPTP: https://pt.wikipedia.org/wiki/Point-to-Point_Tunneling_Protocol
Obs: no vídeo falei de PPTP com referência a Fax-Modem, na qual usa o Protocolo PPP, o PPTP faz Túnel VPN, por-favor, desconsiderar, pois o PPTP pode trabalhar em conjunto com Dial-Up e PPP)
RFC 1918: https://pt.wikipedia.org/wiki/Rede_privada
Redes Bogon: https://en.wikipedia.org/wiki/Bogon_filtering
Carrier Grade NAT: https://pt.wikipedia.org/wiki/Carrier_Grade_NAT

Link da vídeo aula: https://www.youtube.com/watch?v=H6VLgpfXvmg

## **CONHECENDO o DASHBOARD do UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para utilizar o Dashboard (Painel de Instrumentos) do WebGUI (Graphics User Interface) WebConfgiurator do UTM pfSensse Firewall v2.4.4

A ferramenta de Dashboard do UTM pfSense permite fazer um monitoramento rápido da saúde do pfSense, analisando os principais recursos e desempenho da rede, monitorando o status de serviços de rede, trafego de rede e muito mais, facilitando bastante a analise de erros e provendo soluções rápidas.

Recomendações: Recomendo utilizar o Navegador de Web Mozilla Firefox, que tem uma maior compatibilidade com soluções Open Source: https://www.mozilla.org/pt-BR/firefox/, em nosso exemplo, vamos acessar o servidor com endereço IP: http://172.16.10.254, nos próximos vídeos vou mostrar como configurar o ambiente para trabalhar com HTTPS, Usuário padrão do pfSense é: admin, e senha padrão é: pfsense, após a configuração do WebGUI via Wizard, utilizar a senha que foi configurada.

Informações extras:
Dashboard: https://pt.wikipedia.org/wiki/Painel_de_bordo
Plug-in: https://pt.wikipedia.org/wiki/Plug-in
Obs: no vídeo falo bastante sobre Plug-in, no pfSense o conceito correto e Widget quando se trabalha com Dashboard, só desconsiderar a fala
Widget: https://pt.wikipedia.org/wiki/Widget
Drag-and-Drop: https://pt.wikipedia.org/wiki/Drag-and-drop
Round Trip Time: https://pt.wikipedia.org/wiki/Round_Trip_Time
Obs: conceito utilizado no Widget de Gateways

Link da vídeo aula: https://www.youtube.com/watch?v=REF3pCYIKnc&t

## **EXPLORANDO o WebGUI do UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para utilizar o WebGUI (Graphics User Interface) do UTM pfSensse Firewall v2.4.4

Toda a administração e configuração do UTM pfSense será feita utilizando o WebGUI, no pfSense o menu está dividido em várias áreas, facilitando a administração, todas as opções de configuração do pfSense são auto-explicativas e sempre tem uma ajuda escrita nos campos ou links para facilitar o entendimento da configuração.

Menu está dividido nas seguintes opções:
System (sistema): Configurações gerais do sistema do UTM pfSense;
Interfaces (placas de rede): Configurações gerais das interfaces de rede;
Firewall: Configurações gerais das regras de firewall;
Services (serviços): Configurações gerais dos serviços de rede;
VPN (redes virtuais privadas): Configurações gerais dos serviços de Túnel VPN;
Status (estado/condição): Condições gerais dos serviços de rede;
Diagnostics (diagnóstico): Ferramentas de análise de falhas e diagnostico do sistema;
Help (ajuda): Link de acesso a ajuda da ferramenta UTM pfSense

Link da vídeo aula: https://www.youtube.com/watch?v=bbSvFvwQW7M&t

## **COMO atualizar o UTM pfSENSE FIREWALL v2.4.4 para nova Versão**

Vídeo mostrando os procedimentos básicos para atualizar a versão do UTM pfSENSE 2.4.4 para a nova versão 2.4.4.2

O Appliance do pfSense sofre atualizações constante da comunidade, sempre é uma boa prática manter o sistema atualizado, mais infelizmente problemas na atualização pode acontecer, recomendo sempre fazer um Backup antes (vídeo será feito em breve) ou se você utiliza máquina virtual, fazer um Snapshoots, caso tenha alguma falha, você tem a possibilidade de voltar uma versão anterior sem erros.

Informações extras:
Backup: https://pt.wikipedia.org/wiki/C%C3%B3pia_de_seguran%C3%A7a
Snapshot: https://pt.wikipedia.org/wiki/C%C3%B3pia_instant%C3%A2nea_de_volume

Link da vídeo aula: https://www.youtube.com/watch?v=79OOQOpT794&t

## **CONFIGURANDO o Acesso Seguro do SSH e CONSOLE no UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para configurar o acesso remoto seguro utilizando o SSH e porta Console do UTM pfSensse Firewall v2.4.4

Toda a administração e configuração do UTM pfSense será feita utilizando o WebGUI, algumas configurações iniciais são feitas utilizando o Console, caso tenha alguma falha de acesso remoto utilize o console que é a forma mais simples e rápida de acesso, temos também a possibilidade de acessar o console e o shell do pfSense via conexão segura utilizando o OpenSSH Client.

#Configuração da Porta Console
adicionar o usuário aos Grupos: tty e dialout

#Instalando o PuTTY e FileZilla
sudo apt update && sudo apt install putty putty-tools filezilla

#Gerando a Chave Pública do SSH
ssh-keygen

#Localização padrão das Chaves Públicas e Privadas
cd /home/vaamonde/.ssh/

Informações extras:
OpenSSH: https://pt.wikipedia.org/wiki/OpenSSH
Console: https://pt.wikipedia.org/wiki/Interface_de_linha_de_comandos
Chaves Privadas/Publicas: https://pt.wikipedia.org/wiki/Criptografia_de_chave_p%C3%BAblica
Putty: https://www.putty.org/
Filezilla: https://filezilla-project.org/

Link da vídeo aula: https://www.youtube.com/watch?v=t5gtSGaShn4&t

## **CONFIGURANDO a CA e CERTIFICADOS no UTM pfSENSE FIREWALL v2.4.4**

Vídeo mostrando os procedimentos básicos para configurar uma CA (Certification Authority - Autoridade de Certificação) e a geração de Certificados para trabalhar com o Serviço de HTTPS do UTM pfSENSE FIREWALL v2.4.4

Toda a administração e configuração do UTM pfSense será feita utilizando o WebGUI, para manter a segurança de acesso local ou externo, é recomendado a configuração do Protocolo HTTPS utilizando um Certificado Válido para permiti conexões seguras, para isso também é necessário a criação de uma CA que vai validar o certificado e permiti o acesso.

OBSERVAÇÃO IMPORTANTE: 19:00 No Linux Mint, o navegador Google Chrome não usa a cadeia de CA padrão, devendo fazer o procedimento de instalação manual, acessando: Menu, Configurações, Pesquisando Gerenciador de Certificado, clicar na aba Autoridade, depois clicar em Importar, localizar o arquivo de CA, marcar as opções de Confiar em Website, Email e Software, clicar em: OK.

Informações extras:
CA: https://pt.wikipedia.org/wiki/Autoridade_de_certifica%C3%A7%C3%A3o
Certificado: https://pt.wikipedia.org/wiki/Certificado_digital
Chaves Privadas/Publicas: https://pt.wikipedia.org/wiki/Criptografia_de_chave_p%C3%BAblica
Criptografia: https://pt.wikipedia.org/wiki/Criptografia

Link da vídeo aula: https://www.youtube.com/watch?v=BvNAVlbdOdo&t