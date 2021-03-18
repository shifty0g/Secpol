
outdir=%A_Desktop%\%A_ComputerName%_collect\secpol\

IfNotExist, %outdir%
    FileCreateDir, %outdir%

; opens secpol.msc takes screenshots and exports sections out 
; on windows 7 the scrolling doesnt seem to work 


sleep 200
WinActivate, Local Security Policy  
WinClose, Local Security Policy  
sleep 600


IfWinNotExist, Local Security Policy
    Run, secpol.msc

WinWait, Local Security Policy   
WinActivate, Local Security Policy    

sleep 600  
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {down}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
send {up}
sleep 600  

send {down}
send {right}
send {down}

;Password Policy
sleep 1200

; export settings to text
Send !a
send {down}
send {Enter}
sleep 1200
Send %outdir%secpol_password-policy.csv
sleep 1200
Send {Tab}
send {down}
send {down}
Send {Enter}
Send {Enter}
sleep 600



sleep 300      
send {down}
sleep 1200


; export settings to text
sleep 600
Send !a
send {down}
send {Enter}
sleep 1200
Send %outdir%secpol_account-lockout-policy.csv
sleep 1200
Send {Tab}
send {down}
send {down}
Send {Enter}
Send {Enter}
sleep 600
 
    
sleep 600    
send {down}
send {right}
send {down}


;Audit Policy 
sleep 1200

   

;audit policy - export settings to text 
sleep 600
Send !a
send {down}
send {Enter}
sleep 1200
Send %outdir%secpol_audit-policy.csv
sleep 1200
Send {Tab}
send {down}
send {down}
Send {Enter}
Send {Enter}
sleep 600

sleep 300  
send {down}
WinMaximize 


;URA
sleep 1200

; need to figure out how to set columns here 


; URA - export settings to text
Send !a
send {down}
send {Enter}
sleep 1200
Send %outdir%secpol_ura-policy.csv
sleep 1200
Send {Tab}
send {down}
send {down}
Send {Enter}
Send {Enter}
sleep 600 
    
send {down}
WinMaximize 

;Security Options 
sleep 1200

;save security options
Send !a
send {down}
send {Enter}
sleep 1200
Send %outdir%secpol_security-options.csv
sleep 1200
Send {Tab}
send {down}
send {down}
Send {Enter}
Send {Enter}
sleep 600

WinClose, Local Security Policy 



