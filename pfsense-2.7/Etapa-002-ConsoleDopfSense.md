Autor: Robson Vaamonde<br>
Procedimentos em TI: http://procedimentosemti.com.br<br>
Bora para Prática: http://boraparapratica.com.br<br>
Robson Vaamonde: http://vaamonde.com.br<br>
Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
LinkedIn Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/<br>
Github Procedimentos em TI: https://github.com/vaamonde<br>
Data de criação: 20/01/2024<br>
Data de atualização: 27/05/2025<br>
Versão: 0.07
Testado e homologado no Firewall NG UTM Netgate pfSense 2.7.x

Versões do software pfSense e FreeBSD: https://docs.netgate.com/pfsense/en/latest/releases/versions.html#x<br>
Novos recurso e mudanças da versão 2.7.2: https://docs.netgate.com/pfsense/en/latest/releases/2-7-2.html<br>
Novos recurso e mudanças da versão 2.7.1: https://docs.netgate.com/pfsense/en/latest/releases/2-7-1.html<br>
Novos recurso e mudanças da versão 2.7.0: https://docs.netgate.com/pfsense/en/latest/releases/2-7-0.html<br>

07/12/2023 Lançamento da Versão 2.7.2: https://www.netgate.com/blog/netgate-releases-pfsense-plus-software-version-23.09.1-and-pfsense-ce-software-version-2.7.2<br>
16/11/2023 Lançamento da Versão 2.7.1: https://www.netgate.com/blog/netgate-releases-pfsense-ce-software-version-2.7.1<br>
29/06/2023 Lançamento da Versão 2.7.0: https://www.netgate.com/blog/pfsense-2.7.0-and-23.05<br>
16/06/2023 Lançamento da Versão BETA 2.7.0: https://www.netgate.com/blog/pfsense-ce-software-version-2.7.0-beta-available<br>

Documentação Oficial do Netgate/pfSense em PDF: https://docs.netgate.com/manuals/pfsense/en/latest/the-pfsense-documentation.pdf<br>

Opções do Console do pfSense: https://docs.netgate.com/pfsense/en/latest/config/console-menu.html<br>
Atribuição de Interfaces do pfSense: https://docs.netgate.com/pfsense/en/latest/config/console-menu.html#assign-interfaces<br>
Configuração das Interfaces do pfSense: https://docs.netgate.com/pfsense/en/latest/config/console-menu.html#set-interface-s-ip-address<br>
Teste de conectividade do pfSense: https://docs.netgate.com/pfsense/en/latest/config/console-menu.html#ping-host<br>

**OBSERVAÇÕES:** das configurações utilizadas nessa documentação:

**(Default)** = Configuração padrão do pfSense = *ON ou OFF ou Value*<br>
**(Disable)** = Desabilitado nessa configuração = *OFF*<br>
**(Enable)**  = Habilitado nessa configuração = *ON*<br>
**(Remove)**  = Removido dessa configuração = *Sem valor ou opção*<br>
**<***>**     = Botão de confirmação ou de aplicar as configurações<br>

### PRIMEIRA ETAPA: Opções do Console do Netgate pfSense
```bash
0) Logout (SSH only) - sair do acesso remoto via SSH
1) Assign Interfaces - ativação e atribuição de Interfaces de Rede
2) Set Interface(s) IP address - configuração do Endereço IPv4, IPv6 e DHCP Server
3) Reset WebConfigurator password - resetar para a senha padrão (pfSense) do usuário admin o acesso via WebGui
4) Reset to factory defaults - resetar para as configurações padrão do pfSense
5) Reboot system - reinicializar o pfSense
6) Halt system - desligar o pfSense
7) Ping host - testar a conectividade de rede LAN ou WAN com o comando ping no pfSense
8) Shell - acessar o Bash/Shell do pfSense
9) pfTop - software de monitoramento de protocolo de conexões de rede LAN ou WAN do pfSense
10) Filter Logs - filtros dos logs referente as regras de Firewall de LAN ou WAN do pfSense
11) Restart WebConfigurator - reinicializar o WebConfigurator após uma falha de acesso via navegador
12) PHP Shell + Netgate pfSense Plus tools - acesso ao PHP Shell e conjunto de ferramentas de desenvolvedor do pfSense
13) Update from console - atualização do pfSense via console
14) Enable/Disable Secure Shell (sshd) - habilitar ou desabilitar o acesso seguro via SSH via console
15) Restore recent configuration - restauração da última configuração válida do pfSense via console
16) Restart PHP-FPM - reinicializar o serviço do PHP-FPM (FastCGI Process Manager) do WebConfigurator
```

### SEGUNDA ETAPA: Endereçamento das Interfaces do pfSense
```bash
01. Interface WAN: Padrão de configuração de Endereço IP Dinâmico via DHCP
02. Interface LAN: Padrão de configuração de Endereço IP Estático
03. Endereço IPv4 Padrão da Interface de LAN do pfSense: 192.168.1.1/24
```

### TERCEIRA ETAPA: Atribuição das Interfaces do pfSense
```bash
01. Atribuição das Interfaces de WAN e LAN
    1) Assign Interfaces
      Should VLANs be set up now [y/n]? n <Enter>
      Enter the WAN interface name or 'a' for auto-detection
        (em0 em1 or a): em0 <Enter>
      Enter the LAN interface name or 'a' for auto-detection
      NOTE: this enables full Firewalling/NAT mode.
        (em1 a or nothing if finished): em1 <Enter>
      Do you want to proceed [y/n]? y <Enter>
```

### QUARTA ETAPA: Configuração do Endereço de Rede Local e DHCP Server
```bash
01. Setando o Endereçamento IPv4 ou IPV6 das Interfaces de WAN e LAN
    2) Set interface(s) IP address
      Enter the number of the interface you wish to configure: 2 <Enter>
      Enter the new LAN IPv4 address.
        > 172.16.1.254 <Enter> (alterar conforme a sua necessidade)
      Enter the new LAN IPv4 subnet.
        > 24 <Enter> (alterar conforme a sua necessidade)
      For a WAN, enter the new LAN IPv4 upstream gateway address
      For a LAN, press <Enter> for nome:
        > <Enter>
      Enter the new LAN IPv6 address.
        > <Enter>
      Do you want to enable the DHCP server on LAN? (y/n): y <Enter> (habilitar somente se necessário)
      Enter the start address of the IPv4 client address range: 172.16.1.100 <Enter> (alterar conforme a sua necessidade)
      Enter the end address fo the IPv4 client address range: 172.16.1.150 <Enter> (alterar conforme a sua necessidade)
      Do you want to revert to HTTP as the WebConfigurator protocol? (y/n): y <Enter>	
      Press <Enter> to continue.
```

### QUINTA ETAPA: Verificação da conexão com a Internet na Interface WAN
```bash
01. Testando a conectividade com a Internet
    7) Ping host
      Enter a host name or IP address: google.com <Enter>
      Press <Enter> to continue.
```