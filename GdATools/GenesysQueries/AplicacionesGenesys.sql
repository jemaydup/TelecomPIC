select

CFG_HOST.NAME "Host",
CFG_HOST.IP_ADDRESS "Dirección IP del Host",
CFG_HOST.LCA_PORT "Puerto de LCA",
case
    when CFG_HOST.OS_TYPE = 0    then    'Unknown OS Type'
    when CFG_HOST.OS_TYPE = 1    then    'Solaris'
    when CFG_HOST.OS_TYPE = 2    then    'Solaris x86'
    when CFG_HOST.OS_TYPE = 3    then    'Tru64 Unix'
    when CFG_HOST.OS_TYPE = 4    then    'HP-UX'
    when CFG_HOST.OS_TYPE = 5    then    'IBM AIX'
    when CFG_HOST.OS_TYPE = 6    then    'SunOS'
    when CFG_HOST.OS_TYPE = 7    then    'Windows NT'
    when CFG_HOST.OS_TYPE = 8    then    'Windows'
    when CFG_HOST.OS_TYPE = 9    then    'IBM OS2'
    when CFG_HOST.OS_TYPE = 10    then    'Macintosh'
    when CFG_HOST.OS_TYPE = 11    then    'Tandem UNIX'
    when CFG_HOST.OS_TYPE = 12    then    'UNIX Ware'
    when CFG_HOST.OS_TYPE = 13    then    'Windows 2000'
    when CFG_HOST.OS_TYPE = 14    then    'Windows XP'
    when CFG_HOST.OS_TYPE = 15    then    'Windows Server 2003'
    when CFG_HOST.OS_TYPE = 16    then    'RedHat Enterprise Linux AS/Intel'
end as "Sistema Operativo",
CFG_APPLICATION.NAME "Aplicación Genesys",
case
when CFG_APPLICATION.TYPE = 0    then    'Unknown Application Type'
when CFG_APPLICATION.TYPE = 1    then    'T-Server'
when CFG_APPLICATION.TYPE = 2    then    'Stat Server'
when CFG_APPLICATION.TYPE = 3    then    'Billing Server'
when CFG_APPLICATION.TYPE = 4    then    'Billing Client'
when CFG_APPLICATION.TYPE = 5    then    'Agent Pulse'
when CFG_APPLICATION.TYPE = 6    then    'Voice Treatment Server'
when CFG_APPLICATION.TYPE = 7    then    'Voice Treatment Manager'
when CFG_APPLICATION.TYPE = 8    then    'Database Access Point'
when CFG_APPLICATION.TYPE = 9    then    'Call Concentrator'
when CFG_APPLICATION.TYPE = 10    then    'CPD Server'
when CFG_APPLICATION.TYPE = 11    then    'List Manager'
when CFG_APPLICATION.TYPE = 12    then    'Outbound Contact Server'
when CFG_APPLICATION.TYPE = 13    then    'Outbound Contact Manager'
when CFG_APPLICATION.TYPE = 14    then    'Campaign Configuration Environment'
when CFG_APPLICATION.TYPE = 15    then    'Universal Routing Server'
when CFG_APPLICATION.TYPE = 16    then    'Strategy Builder'
when CFG_APPLICATION.TYPE = 17    then    'Interaction Router Client'
when CFG_APPLICATION.TYPE = 18    then    'Agent Desktop'
when CFG_APPLICATION.TYPE = 19    then    'Configuration Manager'
when CFG_APPLICATION.TYPE = 20    then    'Call Center Pulse'
when CFG_APPLICATION.TYPE = 21    then    'Configuration Server'
when CFG_APPLICATION.TYPE = 22    then    'Third Party Application'
when CFG_APPLICATION.TYPE = 23    then    'Third Party Server'
when CFG_APPLICATION.TYPE = 24    then    'Strategy Simulator'
when CFG_APPLICATION.TYPE = 25    then    'Strategy Scheduler'
when CFG_APPLICATION.TYPE = 26    then    'DART Server'
when CFG_APPLICATION.TYPE = 27    then    'DART Client'
when CFG_APPLICATION.TYPE = 28    then    'Custom Server'
when CFG_APPLICATION.TYPE = 29    then    'External Router'
when CFG_APPLICATION.TYPE = 30    then    'Virtual Interactive-T'
when CFG_APPLICATION.TYPE = 31    then    'Virtual Routing Point'
when CFG_APPLICATION.TYPE = 32    then    'Database'
when CFG_APPLICATION.TYPE = 33    then    'Web Option'
when CFG_APPLICATION.TYPE = 34    then    'Detail Biller'
when CFG_APPLICATION.TYPE = 35    then    'Summary Biller'
when CFG_APPLICATION.TYPE = 36    then    'Network Overflow Manager'
when CFG_APPLICATION.TYPE = 37    then    'Backup Control Client'
when CFG_APPLICATION.TYPE = 38    then    'Data Sourcer'
when CFG_APPLICATION.TYPE = 39    then    'Data Modeling Assistant'
when CFG_APPLICATION.TYPE = 40    then    'IVR Server'
when CFG_APPLICATION.TYPE = 41    then    'I-Server'
when CFG_APPLICATION.TYPE = 42    then    'Message Server'
when CFG_APPLICATION.TYPE = 43    then    'Solution Control Server'
when CFG_APPLICATION.TYPE = 44    then    'Solution Control Interface'
when CFG_APPLICATION.TYPE = 45    then    'SNMP Agent'
when CFG_APPLICATION.TYPE = 46    then    'DB Server'
when CFG_APPLICATION.TYPE = 47    then    'WFM Client'
when CFG_APPLICATION.TYPE = 48    then    'WFM Data Aggregator'
when CFG_APPLICATION.TYPE = 49    then    'WFM Web Services'
when CFG_APPLICATION.TYPE = 50    then    'WFM Schedule Server'
when CFG_APPLICATION.TYPE = 51    then    'Interaction Routing Designer'
when CFG_APPLICATION.TYPE = 52    then    'ETL Proxy'
when CFG_APPLICATION.TYPE = 53    then    'Install-Time Configuration Utility'
when CFG_APPLICATION.TYPE = 54    then    'GVP-Voice Communication Server'
when CFG_APPLICATION.TYPE = 55    then    'GIM ETL'
when CFG_APPLICATION.TYPE = 56    then    'VSS Shared'
when CFG_APPLICATION.TYPE = 57    then    'VSS Console'
when CFG_APPLICATION.TYPE = 58    then    'Data Mart'
when CFG_APPLICATION.TYPE = 59    then    'Chat Server'
when CFG_APPLICATION.TYPE = 60    then    'Callback Server'
when CFG_APPLICATION.TYPE = 61    then    'Co-Browsing Server'
when CFG_APPLICATION.TYPE = 62    then    'IS Transport Server'
when CFG_APPLICATION.TYPE = 63    then    'Contact Server'
when CFG_APPLICATION.TYPE = 64    then    'E-Mail Server'
when CFG_APPLICATION.TYPE = 65    then    'MediaLink'
when CFG_APPLICATION.TYPE = 66    then    'Web Interaction Requests Server'
when CFG_APPLICATION.TYPE = 67    then    'Web Stat Server'
when CFG_APPLICATION.TYPE = 68    then    'Web Interaction Server'
when CFG_APPLICATION.TYPE = 69    then    'Web Option Route Server'
when CFG_APPLICATION.TYPE = 70    then    'Web Client'
when CFG_APPLICATION.TYPE = 71    then    'Contact Server Manager'
when CFG_APPLICATION.TYPE = 72    then    'Content Analyzer'
when CFG_APPLICATION.TYPE = 73    then    'Response Manager'
when CFG_APPLICATION.TYPE = 74    then    'Voice over IP Controller'
when CFG_APPLICATION.TYPE = 75    then    'Voice over IP Device'
when CFG_APPLICATION.TYPE = 76    then    'Automated Workflow Engine'
when CFG_APPLICATION.TYPE = 77    then    'High Availability Proxy'
when CFG_APPLICATION.TYPE = 78    then    'Voice over IP Stream Manager'
when CFG_APPLICATION.TYPE = 79    then    'Voice over IP DMX Server'
when CFG_APPLICATION.TYPE = 80    then    'Web API Server'
when CFG_APPLICATION.TYPE = 81    then    'Load Balancer'
when CFG_APPLICATION.TYPE = 82    then    'Application Cluster'
when CFG_APPLICATION.TYPE = 83    then    'Load Distribution Server'
when CFG_APPLICATION.TYPE = 84    then    'G-Proxy'
when CFG_APPLICATION.TYPE = 85    then    'Genesys Interface Server'
when CFG_APPLICATION.TYPE = 86    then    'GCN Delivery Server'
when CFG_APPLICATION.TYPE = 87    then    'GCN Client'
when CFG_APPLICATION.TYPE = 88    then    'IVR DirectTalk Server'
when CFG_APPLICATION.TYPE = 89    then    'GCN Thin Server'
when CFG_APPLICATION.TYPE = 90    then    'Classification Server'
when CFG_APPLICATION.TYPE = 91    then    'Training Server'
when CFG_APPLICATION.TYPE = 92    then    'Universal Callback Server'
when CFG_APPLICATION.TYPE = 93    then    'CPD Server Proxy'
when CFG_APPLICATION.TYPE = 94    then    'XLink Controller'
when CFG_APPLICATION.TYPE = 95    then    'Knowledge Worker Portal'
when CFG_APPLICATION.TYPE = 96    then    'WFM Server'
when CFG_APPLICATION.TYPE = 97    then    'WFM Builder'
when CFG_APPLICATION.TYPE = 98    then    'WFM Reports'
when CFG_APPLICATION.TYPE = 99    then    'WFM Web'
when CFG_APPLICATION.TYPE = 100    then    'Knowledge Manager'
when CFG_APPLICATION.TYPE = 101    then    'IVR Driver'
when CFG_APPLICATION.TYPE = 102    then    'IVR Library'
when CFG_APPLICATION.TYPE = 103    then    'LCS Adapter'
when CFG_APPLICATION.TYPE = 104    then    'Desktop .NET Server'
when CFG_APPLICATION.TYPE = 105    then    'Gplus Adapter for Siebel 7 Configuration Synchronization Component'
when CFG_APPLICATION.TYPE = 106    then    'Gplus Adapter for Siebel 7 Campaign Synchronization Component'
when CFG_APPLICATION.TYPE = 107    then    'Genesys Generic Server'
when CFG_APPLICATION.TYPE = 108    then    'Genesys Generic Client'
when CFG_APPLICATION.TYPE = 109    then    'Call Director'
when CFG_APPLICATION.TYPE = 110    then    'SIP Communication Server'
when CFG_APPLICATION.TYPE = 111    then    'Interaction Server'
when CFG_APPLICATION.TYPE = 112    then    'Genesys Integration Server'
when CFG_APPLICATION.TYPE = 113    then    'WFM Daemon'
when CFG_APPLICATION.TYPE = 114    then    'GVP Policy Manager'
when CFG_APPLICATION.TYPE = 115    then    'GVP Cisco Queue Adapter'
when CFG_APPLICATION.TYPE = 116    then    'GVP Text To Speech Server'
when CFG_APPLICATION.TYPE = 117    then    'GVP ASR Log Manager'
when CFG_APPLICATION.TYPE = 118    then    'GVP Bandwidth Manager'
when CFG_APPLICATION.TYPE = 119    then    'GVP Events Collector'
when CFG_APPLICATION.TYPE = 120    then    'GVP Cache Server'
when CFG_APPLICATION.TYPE = 121    then    'GVP ASR Log Server'
when CFG_APPLICATION.TYPE = 122    then    'GVP ASR Package Loader'
when CFG_APPLICATION.TYPE = 123    then    'GVP IP Communication Server'
when CFG_APPLICATION.TYPE = 124    then    'GVP Resource Manager'
when CFG_APPLICATION.TYPE = 125    then    'GVP SIP Session Manager'
when CFG_APPLICATION.TYPE = 126    then    'GVP Media Gateway'
when CFG_APPLICATION.TYPE = 127    then    'GVP Soft Switch'
when CFG_APPLICATION.TYPE = 128    then    'GVP Core Service'
when CFG_APPLICATION.TYPE = 129    then    'GVP Voice Communication Server'
when CFG_APPLICATION.TYPE = 130    then    'GVP Unified Login Server'
when CFG_APPLICATION.TYPE = 131    then    'GVP Call Status Monitor'
when CFG_APPLICATION.TYPE = 132    then    'GVP Reporter'
when CFG_APPLICATION.TYPE = 133    then    'GVP H.323 Session Manager'
when CFG_APPLICATION.TYPE = 134    then    'GVP ASR Log Manager Agent'
when CFG_APPLICATION.TYPE = 135    then    'GVP Genesys Queue Adapter'
when CFG_APPLICATION.TYPE = 136    then    'GVP IServer'
when CFG_APPLICATION.TYPE = 137    then    'GVP SCP Gateway'
when CFG_APPLICATION.TYPE = 138    then    'GVP SRP Server'
when CFG_APPLICATION.TYPE = 139    then    'GVP MRCP TTS Server'
when CFG_APPLICATION.TYPE = 140    then    'GVP CCS Server'
when CFG_APPLICATION.TYPE = 141    then    'GVP MRCP ASR Server'
when CFG_APPLICATION.TYPE = 142    then    'GVP Network Monitor'
when CFG_APPLICATION.TYPE = 143    then    'GVP OBN Manager'
when CFG_APPLICATION.TYPE = 144    then    'GVP SelfService Provisioning Server'
when CFG_APPLICATION.TYPE = 145    then    'GVPMCP'
when CFG_APPLICATION.TYPE = 146    then    'GVPFetchingModule'
when CFG_APPLICATION.TYPE = 147    then    'GVPMCPLegacyInterpreter'
when CFG_APPLICATION.TYPE = 148    then    'GVPCCP'
when CFG_APPLICATION.TYPE = 149    then    'GVPResourceMgr'
when CFG_APPLICATION.TYPE = 150    then    'GVPClusterMgr'
when CFG_APPLICATION.TYPE = 151    then    'GVPMediaServer'
when CFG_APPLICATION.TYPE = 152    then    'GVPPSTNConnector'
when CFG_APPLICATION.TYPE = 153    then    'GVPReportingSever'
when CFG_APPLICATION.TYPE = 154    then    'GVPASG'
when CFG_APPLICATION.TYPE = 155    then    'GVPCTIConnector'
when CFG_APPLICATION.TYPE = 156    then    'ResourceAccessPoint'
when CFG_APPLICATION.TYPE = 157    then    'InteractionWorkspace'
when CFG_APPLICATION.TYPE = 158    then    'Advisors'
when CFG_APPLICATION.TYPE = 159    then    'ESSExtensibleServices'
when CFG_APPLICATION.TYPE = 160    then    'CustomerView'
when CFG_APPLICATION.TYPE = 161    then    'OrchestrationServer'
when CFG_APPLICATION.TYPE = 162    then    'IWDManager'
when CFG_APPLICATION.TYPE = 163    then    'CapturePoint'
when CFG_APPLICATION.TYPE = 164    then    'RulesESPServer'
when CFG_APPLICATION.TYPE = 165    then    'GenesysAdministrator'
when CFG_APPLICATION.TYPE = 166    then    'iWDManager'
when CFG_APPLICATION.TYPE = 167    then    'iWDRuntimeNode'
when CFG_APPLICATION.TYPE = 168    then    'MaxAppType'
when CFG_APPLICATION.TYPE = 184    then    'GAX / GA Server'    
end as "Tipo de aplicación Genesys",
CFG_APPLICATION.VERSION "Versión de apliación Genesys",
CFG_APPLICATION.WORK_DIRECTORY "Carpeta de instalación",
CFG_APPLICATION.COMMAND_LINE "Command Line",
CFG_APPLICATION.CMD_LINE_ARGS "Argumentos del CMD Line",
CFG_APP_OPTION.SECTION "Sección",
CFG_APP_OPTION.OPT "Opción",
CFG_APP_OPTION.VAL "Valor de la opción"


from CFG_APP_OPTION

        left join CFG_APPLICATION
        on 
        CFG_APP_OPTION.OBJECT_DBID = CFG_APPLICATION.DBID

        left join CFG_SERVER
        on
        CFG_APPLICATION.DBID = CFG_SERVER.APP_DBID

        left join CFG_HOST
        on
        CFG_SERVER.HOST_DBID = CFG_HOST.DBID
        
/*Where

        CFG_APP_OPTION.SECTION = 'log'*/

order by CFG_HOST.NAME asc
