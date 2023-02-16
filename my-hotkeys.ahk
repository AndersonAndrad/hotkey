#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SetCapsLockState, AlwaysOff

/*
CAPSLOCK ====================
*/
; Arrows
CapsLock & w::Up
CapsLock & a::Left
CapsLock & d::Right
CapsLock & s::Down
CapsLock & q::Send ^+{Left}{Del}
CapsLock & e::Send ^+{Right}{Del}

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
CapsLock & `;::Send +{=}

CapsLock & c::?

CapsLock & ,::[
CapsLock & .::]

; change language
Capslock & t::
     Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}
return

; others characters
CapsLock & Space::Backspace
CapsLock & f::Enter

CapsLock & `::Esc

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
