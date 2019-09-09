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
#MaxThreadsPerHotkey 3
#z::  ; Win+Z 热键(可根据您的喜好改变此热键).
if KeepWinZRunning  ;  这说明一个潜在的线程正在下面的循环中运行.
{
    KeepWinZRunning := false  ; 向那个线程的循环发出停止的信号.
    return  ; 结束此线程, 这样才可以让下面的线程恢复并得知上一行所做的更改.
}
; 否则:
KeepWinZRunning := true
Loop
{
    ; 以下四行是您要重复的动作(可根据您的需要修改它们):
    Click Right
    ToolTip, Fishing
    Sleep, 1000*31
    Click Right
    ToolTip, Get
    Sleep, 1000*4
    ; 但请不要修改下面剩下的内容.
    if not KeepWinZRunning  ; 用户再次按下 Win-Z 来向循环发出停止的信号.
        break  ; 跳出此循环.
}
ToolTip,
KeepWinZRunning := false  ; 复位, 为下一次使用热键做准备.
return