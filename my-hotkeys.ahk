﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SetCapsLockState, AlwaysOff

/*
CAPSLOCK 
*/
; Arrows
CapsLock & w::Up
CapsLock & a::Left
CapsLock & d::Right
CapsLock & s::Down

; Delete all word in left and right 
CapsLock & q::Send {LCtrl Down}{BackSpace}{LCtrl Up}
CapsLock & e::Send {Ctrl Down}{Delete}{Ctrl Up}

; Navigate to start and end to word 
CapsLock & x::Send ^{Left}
CapsLock & c::Send ^{Right}

; Navigate to start ans end to line
CapsLock & v::Send {End}
CapsLock & z::Send {Home}

; Reload script
CapsLock & r::Reload

; Special Characters
CapsLock & y::Send +{1} ; !
CapsLock & u::Send +{2} ; @
CapsLock & i::Send +{3} ; #
CapsLock & o::Send +{4} ; $
CapsLock & p::Send +{5} ; %

CapsLock & h::Send +{6} ; ^
CapsLock & j::Send +{7} ; &
CapsLock & k::Send +{8} ; *
CapsLock & n::Send +{9} ; (
CapsLock & m::Send +{0} ; )

CapsLock & l::Send +{-}
CapsLock & /::Send {=}
CapsLock & `;::Send +{=}

CapsLock & b::?

CapsLock & ,::[
CapsLock & .::]

; change language
Capslock & t::Send {Alt Down}{Shift Down}{Shift Up}{Alt Up}

; others characters
CapsLock & Space::Backspace
CapsLock & f::Enter

CapsLock & `::Esc
CapsLock & '::Esc

CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & -::F11
CapsLock & =::F12

; Commands for git
LAlt & u:: Send, git upgrade

; RAlt execute some softwares
RAlt & c:: openVsCodeByCurrentLocation()
RAlt & v:: openVsCode()
RAlt & g:: openChrome()
RAlt & t:: openTeams()

; Open only vscode
openVsCode(){
    run, "C:\Program Files\Microsoft VS Code\Code.exe"
    return
}

; Open vscode in current folder
openVsCodeByCurrentLocation(){
    path := GetActiveExplorerPath()
    run, "C:\Program Files\Microsoft VS Code\Code.exe" "%path%"
    return
}

openChrome(){
    run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
    return
}

openTeams(){
    run, "C:\Users\Ander\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Microsoft Teams (work or school).lnk"
    return
}

GetActiveExplorerPath(){
    explorerHwnd := WinActive("ahk_class CabinetWClass")
    if (explorerHwnd)
    {
        for window in ComObjCreate("Shell.Application").Windows
        {
            if (window.hwnd==explorerHwnd)
            {
                return window.Document.Folder.Self.Path
            }
        }
    }
}