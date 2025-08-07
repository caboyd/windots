Set-Location -Path $PSScriptRoot
$ScriptPath = $MyInvocation.MyCommand.Path

$CWD = $($PWD.Path)

# Check if the script is running with elevated privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # If not running as administrator, restart the script with elevated privileges
    Start-Process powershell.exe -Verb RunAs -ArgumentList $ScriptPath 
    exit
}

Write-Output "-- Setting up Symlinks --"


$Path = "$Home\AppData\Local\nvim"
$Target = "$CWD\nvim"
New-Item -ItemType SymbolicLink -Path $Path  -Target $Target -Force | Out-Null
Write-Output "nvim Symlink:"
Write-Output "    -Path:    $Path"
Write-Output "    -Target:  $$Target"


$Path = "$Home\.wezterm.lua"
$Target = "$CWD\wezterm\.wezterm.lua"
New-Item -ItemType SymbolicLink -Path $Path -Target $Target -Force | Out-Null
Write-Output "wezterm Symlink:"
Write-Output "    -Path:    $Path"
Write-Output "    -Target:  $Target"


Read-Host -Prompt "Press Enter to exit"
