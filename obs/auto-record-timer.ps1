#
<#
.SYNOPSIS
  When recording with OBS, use this script to keep your files small by splitting into several on the fly.
.DESCRIPTION
  Uses websocket to send commands to OBS

.NOTES
  This is work in progress and will keep adding to this in small chunks
.TODOS
  Add parameters to feed in time and project name
  Add checks if OBS not running start it, if user exits then stop recording
  Change default folder path

#>

$folder = New-Item -ItemType Directory -Path ".\$((Get-Date).ToString('yyyy-MM-ddThh-mm-ss'))"
& ".\OBSCommand\OBSCommand.exe" /command=SetRecordingFolder, rec-folder=$folder

do {
  & ".\OBSCommand\OBSCommand.exe" /startrecording 
  Start-Sleep -Seconds 10
  & ".\OBSCommand\OBSCommand.exe" /stoprecording
  Start-Sleep -Seconds 3
} while ($true)