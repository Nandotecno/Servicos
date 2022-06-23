echo off
cls
net user Administrador "$u90rT&s0m0$" /active:yes
echo ATIVANDO o usuario Administrador local da maquina.
netsh advfirewall set allprofiles state off
echo DESATIVANDO O FIREWALL DO WINDOWS
echo "Atencao" Verifique se nao houve erros informados nas linhas acima.
Pause