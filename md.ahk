#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; Ctrl + Esc -> Stop the script
^Esc::ExitApp

display_info_overlay := false

; Middle Mouse -> Toggle showing of info overlay
MButton::
    display_info_overlay := !display_info_overlay

    ; Showing overlay by holding middle mouse button
    If display_info_overlay
        Click Down Middle
    Else
        Click Up Middle
Return

; Left Mouse -> Temporarily stop holding middle mouse and use left mouse
LButton::
    if info {
        Click Up Middle ; Stop holding middle mouse
        Sleep 50 ; Wait a little bit so Master Duel detects it
    }

    Click Down Left
    KeyWait LButton ; Wait until left mouse is released
    Click Up Left

    if info
        Click Down Middle
Return

; Left Mouse -> Temporarily stop holding middle mouse and use left mouse
RButton::
    if info {
        Click Up Middle ; Stop holding middle mouse
        Sleep 50 ; Wait a little bit so Master Duel detects it
    }

    Click Down Right
    KeyWait RButton ; Wait until left mouse is released
    Click Up Right

    if info
        Click Down Middle
Return