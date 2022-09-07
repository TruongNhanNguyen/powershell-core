# set PSReadLine options
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
(Get-PSReadLineOption).HistoryNoDuplicates = $False

# import pwsh modules: terminal-icon, z, psfzf
# terminal icon
Import-Module -Name Terminal-Icons

# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# set oh-my-posh options
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnoster.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "~\agnoster.omp.json" | Invoke-Expression

# set aliases
Set-Alias -Name touch -Value New-Item
Set-Alias -Name curl -Value Invoke-WebRequest
Set-Alias -Name ll -Value ls
Set-Alias -Name np -Value 'C:\WINDOWS\system32\notepad.exe'
Set-Alias -Name rn -Value Rename-Item
Set-Alias -Name which -Value where.exe
# winfetch
Set-Alias winfetch -Value pwshfetch-test-1