; ---------------------------------------------
; Insert date/time stamp (ctrl+d)
; ---------------------------------------------
^d::
FormatTime, time, A_now, yyyy-MM-dd-HH-mm
send %time%
return

:*:d@::
FormatTime, time, A_now, ddd MMM dd yyyy
send %time%
return

:*:m@::matheson.phillip@gmail.com
:*:p@::pmatheson@dxc.com
:*:ddb::DynamoDB



DetectHiddenWindows, On
SetTitleMatchMode, 2

^q::
   	WinActivate, - firefox ahk_class MozillaWindowClass
	Send ^l^a{Del}`%
	Send ^a{Del}
	Send `%
return
