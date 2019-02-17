;  ---------- DEFAULT ----------
;  -----------------------------

; #IfWinActive ahk_exe YOUR_APP_HERE.exe
; {
;     ; 0
;     NumpadIns:: ; comment line or selection
;     ; 1
;     NumpadEnd:: ; dupliacte line
;     ; 2
;     NumpadDown:: ; delete line
;     ; 3 
;     NumpadPgdn:: ; move line
;     LAlt:: ; multi cursor 
; }



;  ---------- VSCODE  ----------
;  -----------------------------

#IfWinActive ahk_exe Code.exe
{
    ; 0
    NumpadIns::^/  ; comment line or selection  
    ; 1
    NumpadEnd::    ; dupliacte line             
    {                                                
        Send, {Alt down}{Shift down}                    
        KeyWait, NumpadEnd                      
        Send, {Alt up}{Shift up} 
        return
    }
    ; 2
    NumpadDown::^+k ; delete line   
    ; 3
    NumpadPgdn::Alt ; move line
    ; leave LALT as multi cursor
}

;  ------- ANDRIOD STUDIO ------
;  -----------------------------

#IfWinActive ahk_exe studio64.exe
{
    ; 0
    NumpadIns::^/ ; comment line or selection 
    ; 1
    NumpadEnd::^d ; dupliacte line
    ; 2
    NumpadDown::^y ; delete line
    ; 3 
    NumpadPgdn:: ; move line
   {
        Send, {Alt down}{Shift down}
        KeyWait, NumpadPgdn
        Send, {Alt up}{Shift up} 
    }
    LAlt:: ; multi cursor 
    {
        Send, {Alt down}{Shift down}
        KeyWait, LAlt
        Send, {Alt up}{Shift up} 
        return
    }
}

;  ------- VISUAL STUDIO -------
;  -----------------------------

#IfWinActive ahk_exe devenv.exe
{
    ; 0
    NumpadIns::^/ ; comment line or selection
    ; (I had to dowload a toggle extension)
    ; 1
    NumpadEnd::^d 
    ;  2
    NumpadDown::^l ; delete line
    ; 3
    NumpadPgdn::Alt ; move line
    LAlt:: ; multi cursor 
     {
        Send, {Alt down}{CtrlDown}
        KeyWait, LAlt
        Send, {Alt up}{CtrlUp}} 
        return
    }
}
