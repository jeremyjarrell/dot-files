; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; Replaces spaces with underscores in highlighted text
^+r::
  saved_clipboard := ClipboardAll
  ControlGetFocus, ActiveControl, A
  Send, ^c
  ClipWait
  ;StringReplace, OutputVar, InputVar, SearchText [, ReplaceText, ReplaceAll?]  
  StringReplace, string_space2underscore, clipboard, %A_SPACE%, _, All
  SendRaw, %string_space2underscore%
  Clipboard := saved_clipboard
  saved_clipboard = ; Free the memory in case the clipboard was very large.
Return 

;Remaps CAPS LOCK to ESC
Capslock::Escape


