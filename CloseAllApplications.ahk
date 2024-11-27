; AutoHotkey v2 Script - Close All Open Applications with ALT + Q

; This script allows you to close all open applications by pressing ALT + Q.
; Use this script with caution, as it may cause unsaved data to be lost.

; Assign the hotkey ALT + Q
!q::
{
    ; Ask the user for confirmation
    response := MsgBox(
        "Are you sure you want to close all open applications? Any unsaved data will be lost.",
        "Confirmation",
        "YesNo"
    )

    if response = 7  ; In AutoHotkey v2, 7 corresponds to the "No" button
        return  ; User canceled the operation

    ; Get the list of all open windows
    windows := WinGetList()
    for hwnd in windows
    {
        ; Get the title and process name of the current window
        title := WinGetTitle(hwnd)
        processName := WinGetProcessName(hwnd)

        ; Exclude specific windows, such as the desktop or the script itself
        if title = "Program Manager"  ; The Windows desktop
            continue
        if processName = "explorer.exe"  ; Exclude File Explorer
            continue
        if processName ~= "i)^AutoHotkey.*\.exe$"  ; Exclude AutoHotkey scripts
            continue

        ; Attempt to close the window gracefully
        WinClose(hwnd)

        ; Wait briefly to allow the application to close
        Sleep 500

        ; If the window is still open, force it to close
        if WinExist(hwnd)
            WinKill(hwnd)
    }
}
