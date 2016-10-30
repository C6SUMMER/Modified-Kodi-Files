Set file=%1 
Set dummy=%file:iso=% 
IF NOT %dummy% == %file% (GOTO playiso) ELSE (goto next) 

:next 
Set file=%1 
Set dummy=%file:mpls=% 
IF NOT %dummy% == %file% (GOTO plaympls) ELSE (goto playbdmv) 

:playiso 
"C:\Program Files (x86)\CyberLink\PowerDVD15\PowerDVD.exe" /fullscreen %1

GOTO end 
:plaympls 
set pth=%1 
set pth=%pth:~1,-25% 
"C:\Program Files (x86)\CyberLink\PowerDVD15\PowerDVD.exe" /fullscreen %pth%
GOTO end 

:playbdmv 
set pth=%1 
set pth=%pth:BDMV\MovieObject.bdmv=% 
set pth=%pth:BDMV\index.bdmv=% 
"C:\Program Files (x86)\CyberLink\PowerDVD15\PowerDVD.exe" /fullscreen %pth%
GOTO end 

:end 
exit