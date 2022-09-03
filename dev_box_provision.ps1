Set-Location -Path "<REPO_WHERE_THE_DEVBOX_LIVES>" # e.g. C:\Projekte\dev-box

git pull

Write-Output "start vagrant up"
vagrant up --provision

Write-Host -NoNewLine 'Press any key to continue...';
