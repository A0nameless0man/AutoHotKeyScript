#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Process, Priority, , High
; z::
; While GetKeyState("z","P")
; {
;     Click Right
;     Sleep, 1000*14
;     Click Right
;     Sleep, 1000
; }
; return
z::  ; Win+Z 热键(可根据您的喜好改变此热键).
While(GetKeyState("z")) 
{
    Loop 5
    {
        Send, 6
        Send ,{Tab}
    }
Send, 5
Send, {Tab}
}
Return