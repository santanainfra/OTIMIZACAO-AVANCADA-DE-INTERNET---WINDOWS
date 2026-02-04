Escrita-Apresentadora "========================================="
Write-Host " OTIMIZAÇÃO AVANÇADA DE INTERNET - WINDOWS"
Apresentador de Escrita "=========================================" - Cor em Primeiro Plano Ciano

# -------------------------------
# 1. Limpeza e reset basico
# -------------------------------

Escreve-Apresentador "'n[LIMPEZA DE REDE]" -PrimeiroPlanoCor Amarelo

ipconfig /flushdns
ipconfig /release
ipconfig /renew
arp -d *

Resetar o Netsh Winsock
Netsh int IP reset

# -------------------------------
# 2. Configurações Avançadas de TCP
# -------------------------------

Write-Host "'n[AJUSTES TCP]" -Anteplano cor amarelo

Netsh int TCP Set Global AutotuningLevel=Normal
Netsh int TCP Set Global RSS=Enabled
Netsh int TCP Set Global RSC=Enabled
Netsh int TCP Set Global Chimney=Enabled
netsh int tcp set global ecncapability=desabilitado
Netsh int TCP Set Global Timestamps=desabilitado
Netsh int TCP Set Global CongestionProvider=CTCP
