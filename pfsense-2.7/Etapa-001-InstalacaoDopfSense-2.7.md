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
Versão: 0.03
Testado e homologado no Firewall NG UTM Netgate pfSense 2.7.x

Versões do software pfSense e FreeBSD: https://docs.netgate.com/pfsense/en/latest/releases/versions.html#x<br>
Novos recurso e mudanças da versão 2.7.2: https://docs.netgate.com/pfsense/en/latest/releases/2-7-2.html<br>
Novos recurso e mudanças da versão 2.7.1: https://docs.netgate.com/pfsense/en/latest/releases/2-7-1.html<br>
Novos recurso e mudanças da versão 2.7.0: https://docs.netgate.com/pfsense/en/latest/releases/2-7-0.html<br>

07/12/2023 Lançamento da Versão 2.7.2: https://www.netgate.com/blog/netgate-releases-pfsense-plus-software-version-23.09.1-and-pfsense-ce-software-version-2.7.2<br>
16/11/2023 Lançamento da Versão 2.7.1: https://www.netgate.com/blog/netgate-releases-pfsense-ce-software-version-2.7.1<br>
29/06/2023 Lançamento da Versão 2.7.0: https://www.netgate.com/blog/pfsense-2.7.0-and-23.05<br>
16/06/2023 Lançamento da Versão BETA 2.7.0: https://www.netgate.com/blog/pfsense-ce-software-version-2.7.0-beta-available<br>

10/11/2023 Descontinuação do pacote complementar Squid para software pfSense: https://www.netgate.com/blog/deprecation-of-squid-add-on-package-for-pfsense-software<br>
Release Squid Proxy: http://www.squid-cache.org/Versions/ (v6.6 07/12/2023)<br>

Lista de Aplicativos do pfSense: https://docs.netgate.com/pfsense/en/latest/packages/list.html

**OBSERVAÇÃO IMPORTANTE:** INFORMAÇÕES SOBRE OS PACOTES: *SQUID, LIGHTSQUID E SQUIDGUARD.*

Os pacotes complementares **Squid, SquidGuard e Lightsquid* estão obsoletos nos softwares pfSense Plus e pfSense CE devido a um grande número de vulnerabilidades de segurança upstream não corrigidas. A Netgate recomenda FORTEMENTE  que os usuários desinstalem esses pacotes. Os pacotes não funcionarão mais na próxima versão principal dos softwares  pfSense Plus e pfSense CE.

Hardware Mínimo do pfSense: https://docs.netgate.com/pfsense/en/latest/hardware/minimum-requirements.html<br>
Seleção do Hardware do pfSense: https://docs.netgate.com/pfsense/en/latest/hardware/selection.html<br>
Orientação de Dimensionamento de Hardware do pfSense: https://docs.netgate.com/pfsense/en/latest/hardware/size.html<br>
Sistema de Arquivos e Particionamento UFS: https://docs.netgate.com/pfsense/en/latest/install/install-ufs.html<br>
Sistema de Arquivos e Particionamento ZFS: https://docs.netgate.com/pfsense/en/latest/install/install-zfs.html<br>

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

**OBSERVAÇÕES:** das configurações utilizadas nessa documentação:

**(Default)** = Configuração padrão do pfSense = *ON ou OFF ou Value*<br>
**(Disable)** = Desabilitado nessa configuração = *OFF*<br>
**(Enable)**  = Habilitado nessa configuração = *ON*<br>
**(Remove)**  = Removido dessa configuração = *Sem valor ou opção*<br>
**<***>**     = Botão de confirmação ou de aplicar as configurações<br>

### PRIMEIRA ETAPA: Download da ISO do Netgate UTM pfSense Firewall do Site Oficial

01. Link de download do pfSense: https://www.pfsense.org/download/
02. Versão do download pfSense: 2.7.2 (23/01/2024)
03. Arquitetura do pfSense: AMD64 (64-bit)
04. Tipo de instalação: DVD Image (ISO) Installer
05. Mirror padrão do download: Austin, TX USA
06. Arquivo compactado utilizando o GZ (GNU Zip - Gzip)
07. Extrair o conteúdo do arquivo compactado para utilizar a ISO do pfSense
08. Dica: se você utiliza o Microsoft Windows recomendo instalar o 7-Zip: https://www.7-zip.org/download.html

### SEGUNDA ETAPA: Criação e Configuração da Máquina Virtual no Oracle VirtualBOX

Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads

```bash
#Criação da Máquina Virtual no VituallBOX
01. Ferramentas;
      <Novo>
02. Nome e Sistema Operacional:
      Nome: fwseunome
      Pasta da Máquina: (deixar o padrão do sistema) 
      Tipo: BSD
      Versão: FreeBSD (64-bit)
      <Próximo>
03. Tamanho da memória:
      Tamanho: 2048MB (indicado 4096MB)
      <Próximo>
04. Disco Rígido:
      Criar um novo disco rígido virtual agora
      <Criar>
05. Tipo de arquivo de disco rígido
      VDI (VirtualBOX Disk Image)
      <Próximo>
06. Armazenamento em disco rígido físico
      Dinamicamente alocado
      <Próximo>
07. Localização e tamanho do arquivo
      Localização: (deixar o padrão do sistema)
      Tamanho do disco: 16GB
      <Criar>

#Personalização da Máquina Virtual do pfSense no VituallBOX
08. Configurações da Máquina Virtual pfSense (Propriedades/Configurações)
    Sistema
      Processador
        Processadores: 02 CPUs
        Recursos Estendidos: Habilitar PAE/NX
    Monitor
      Tela
        Memória de Vídeo: 128MB
        Aceleração: Habilitar Aceleração 3D
    Áudio
      Habilitar Áudio: Desabilitar
    Rede
      Adaptador 1 (WAN)
        Habilitar Placa de Rede
        Conectado a: Placa em Modo Bridge
        Nome: (Interface padrão de acesso a Internet e Rede Local do Hospedeiro)
      Adaptador 2 (LAN)
        Habilitar Placa de Rede
        Conectado a: Rede Interna
        Nome: (deixar o padrão do sistema: intnet)
<OK>
```

Documentação Oficial da instalação do pfSense: https://docs.netgate.com/pfsense/en/latest/install/download-installer-image.html

### TERCEIRA ETAPA: Instalação do pfSense (localizar a ISO descompactada)

```bash
#Iniciar a máquina virtual e localizar a ISO para a instalação
01. VM pfSense: Iniciar
02. Selecione o disco rígido de boot
      Selecionar um arquivo de disco óptico virtual
03. Seletor de Discos Ópticos
      Acrescentar
      Selecione o arquivo de disco óptico virtual: pfSense-CE-2.7.2-RELEASE-amd64.iso
      <Abrir>
04. Not Attached
      Selecionar: pfSense-CE-2.7.2-RELEASE-amd64.iso
      <Escolher>
<Iniciar>
```
```bash
#Iniciando a instalação do pfSense no VirtualBOX
01. Copyright and distribution notice: 
      Accept - <Enter>
02. Welcome to pfSense!
      Install (Install pfSense) - <Enter>
03. Partitioning
      Auto (ZFS) Guided Root-on-ZFS - <Enter>
        04.1 Configure Options:
          >>> Install (Proceed with Installation) - <Enter>
          T Pool Type/Disks:   stripe: 0 disks
          - Rescan Devices   *
          - Disk Info   *
          N Pool Name   pfsense
          4 Force 4K Sectores?   YES
          E Encrypt Disks?   NO
          P Partition Scheme   GPT (BIOS)
          S Swap Size   1g
          M Mirror Swap?   NO
          W Encrypt Swap?   NO
        04.2 Select Virtual Device type:
          stripe Stripe - No Redundancy <Enter>
        04.3 Hard Disk Selection
          [*] ada0 VBOX HARDDISK - <Space-Bar> - <Enter>
        04.4 Last Chance! - <Yes> - <Enter>
04. Complete: 
      <Reboot> - <Enter>
```

**OBSERVAÇÃO IMPORTANTE:** No Oracle VirtualBOX existe uma **falha** onde o CD-Room do pfSense *não é ejetado no final da Instalação*, sendo necessário desmontar o CD-Room e rebootar a máquina virtual.

**NOVIDADE:** Na versão **2.7.0** o acesso padrão agora e feito via *HTTPS*, o endereço padrão do pfSense se manteve o mesmo: __`192.168.1.1/24`__ e o usuário: __`admin`__ e senha: __`pfSense`__ continua o mesmo nessa versão.