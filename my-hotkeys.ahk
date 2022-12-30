#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SetCapsLockState, AlwaysOff

CapsLock & w::Up
CapsLock & a::Left
CapsLock & d::Right
CapsLock & s::Down
CapsLock & q::Send ^+{Left}{Del}
CapsLock & e::Send ^+{Right}{Del}

CapsLock & Space::Backspace
CapsLock & f::Enter

/*
CapsLock & q::1
CapsLock & w::2
CapsLock & e::3
CapsLock & r::4
CapsLock & t::5
CapsLock & y::6
CapsLock & u::7
CapsLock & i::8
CapsLock & o::9
CapsLock & p::0
CapsLock & [::-
CapsLock & ]::=
*/