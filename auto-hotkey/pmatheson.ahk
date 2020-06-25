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
:*:cfo::CloudFormation
:*:cfr::CloudFront

DetectHiddenWindows, On
SetTitleMatchMode, 2
