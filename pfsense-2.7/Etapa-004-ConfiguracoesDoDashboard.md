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
Versão: 0.11
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

Configurações do Dashboard do pfSense: https://docs.netgate.com/pfsense/en/latest/monitoring/dashboard.html<br>
Configurações Gerais do pfSense: https://docs.netgate.com/pfsense/en/latest/config/general.html<br>
Configurações de Atualização: https://docs.netgate.com/pfsense/en/latest/install/upgrade-guide.html<br>

**OBSERVAÇÕES:** das configurações utilizadas nessa documentação:

**(Default)** = Configuração padrão do pfSense = *ON ou OFF ou Value*<br>
**(Disable)** = Desabilitado nessa configuração = *OFF*<br>
**(Enable)**  = Habilitado nessa configuração = *ON*<br>
**(Remove)**  = Removido dessa configuração = *Sem valor ou opção*<br>
**<***>**     = Botão de confirmação ou de aplicar as configurações<br>

### PRIMEIRA ETAPA: Configurações Gerais do Dashboard do pfSense
```bash
System
  General Setup
    webConfigurator
      Theme: pfsense-dark (Enable)
      Top Navigation: Fixed (Remains visible at top page) (Enable)
      Hostname in Menu: Fully Qualified Domain Name (Enable) 
      Dashboard Columns: 3 (Enable)
      Interfaces Sort: ON (Enable)
      Associated Panels Show/Hide
        Available Widgets: ON (Enable)
        Log Filter: ON (Enable)
        Manage Log: ON (Enable)
        Monitoring Settings: ON (Enable)
      Login page color: Dark Blue (Default)
      Login hostname: ON (Enable)
  <Save>
<Logout>
```

### SEGUNDA ETAPA: Desativar verificação de atualização no Dashboard
```bash
System
  Update
    Update Settings
      Updates
        Dashboard check: ON (Enable)
    <Save>
```

### TERCEIRA ETAPA: Configuração do Dashboard do pfSense
```bash
Dashboard
  Available Widgets
    #Configuração dos Widgets (Mini-Aplicativos) do Lado Esquerdo
    New pictures: image.png
      (OBSERVAÇÃO: Caso a imagem não seja compatível, um erro de restaure será apresentado)
      <Save>
    System Information: ON - Left-02
    Disks: ON - Left-03
    ZFS: ON - Left-04

    #Configuração dos Widgets (Mini-Aplicativos) do Centro
    Interfaces: ON - Center-01
    Gateways: ON - Center-02
      Edit
        Display: Both (Enable)
      <Save>
    Interface Statistics: ON - Center-03
    Traffic Graphs: ON - Center-04
    Service Status: ON - Center-05

    #Configuração dos Widgets (Mini-Aplicativos) do Lado Direito
    NTP Status: ON - Right-01
    Dynamic DNS Status: ON - Right-02
    IPSec: ON - Right-03
    OpenVPN: ON - Right-04
    Firewall Logs: ON - Right-05
      Edit
        Widget: Firewall Logs 
        Number of entries: 20 (Enable)
        Filter actions: ON Pass, ON Block and ON Reject (Enable)
        Filter interface: ALL (Enable)
        Update interval: 1 Seconds (Enable)
      <Save>
  <Save>
```