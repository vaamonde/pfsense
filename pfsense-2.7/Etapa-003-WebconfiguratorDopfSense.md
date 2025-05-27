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

## Servidores de DNS recomendados para serem utilizados no pfSense

| Servidor de DNS | Endereço Preferencial | Endereço Secundário |
|-----------------|-----------------------|---------------------|
DNS Google (MAIS USADO) | 8.8.8.8 | 8.8.4.4 |
OpenDNS Cisco | 208.67.222.222 | 208.67.220.220 |
OpenDNS FamilyShield | 208.67.222.123 | 208.67.220.123 |
CloudFlare | Preferencial: 1.1.1.1 | 1.0.0.1 |
CloudFlare FamilyShield (INDICO SEU USO) | 1.1.1.3 | 1.0.0.3 |
UltraDNS Neustar | 64.6.64.6 | 64.6.65.6 |
UltraDNS Malware | 156.154.70.2 | 156.154.71.2 |
UltraDNS FamilyShield | 156.154.70.3 | 156.154.71.3 |
Quad9 IBM | 9.9.9.9 | 149.112.112.112 |
Quad9 Malware | 9.9.9.11 | 149.112.112.11 |

Assistente de configuração pfSense: https://docs.netgate.com/pfsense/en/latest/config/setup-wizard.html<br>
Configuração padrão do pfSense: https://docs.netgate.com/pfsense/en/latest/config/index.html<br>

**OBSERVAÇÕES:** das configurações utilizadas nessa documentação:

**(Default)** = Configuração padrão do pfSense = *ON ou OFF ou Value*<br>
**(Disable)** = Desabilitado nessa configuração = *OFF*<br>
**(Enable)**  = Habilitado nessa configuração = *ON*<br>
**(Remove)**  = Removido dessa configuração = *Sem valor ou opção*<br>
**<***>**     = Botão de confirmação ou de aplicar as configurações<br>

### PRIMEIRA ETAPA: Acessando o pfSense via Navegador (recomendado utilizar o Navegador Firefox)
```bash
01. Acessar o endereço IPv4: http://172.16.1.254 (alterar conforme a sua necessidade)
    Sign In
      Username: admin 
      Password: pfsense
      Sign In
    pfSense Setup
      Welcome to pfSense® software!
      <Next>
    Netgate® Global Support is available 24/7
      <Next>
    General Information
      Hostname: ptispo01fw01 (alterar conforme a sua necessidade)
      Domain: pti.intra (alterar conforme a sua necessidade)
      Primary DNS Server: 8.8.8.8 (alterar conforme a tabela de servidores DNS)
      Secondary DNS Server: 8.8.4.4 (alterar conforme a tabela de servidores DNS)
      Override DNS: OFF (Disable)
      <Next>
    Time Server Information
      Time server hostname: a.st1.ntp.br (alterar conforme a sua necessidade)
      Timezone: America/Sao_Paulo (alterar conforme a sua necessidade)
      <Next>
    Configure WAN Interface
      SelectedType: DHCP (Default)
      General configuration
        MAC Address: (Default)
        MTU: (Default)
        MSS: (Default)
      RFC1918 Networks
        Block RFC1918 Private Networks: OFF (Disable)
        Block bogon networks: OFF (Disable)
      <Next>
    Configure LAN Interface
      LAN IP Address: 172.16.1.254 (alterar conforme a sua necessidade)
      Subnet Mask: 24 (alterar conforme a sua necessidade)
      <Next>
    Set Admin WebGUI Password
      Admin Password: pti@2018 (alterar conforme a sua necessidade)
      Admin Password AGAIN: pti@2018 (alterar conforme a sua necessidade)
      <Next>
    Reload configuration
      <Reload>
    Wizard completed.
      <Finish>
```
```bash
02. Copyright and Trademark Notices.
    <Accept>
      Thank you!
    <Close>
```