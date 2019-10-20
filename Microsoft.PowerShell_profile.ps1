Import-Module posh-git
Import-Module oh-my-posh
Import-Module DockerCompletion
Set-Theme Honukai
CLS
systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List

$git = "C:\Program Files\Git\cmd\git.exe"
$docker = "C:\Program Files\Docker\Docker\resources\bin\docker.exe"
$code = "C:\Users\volka\AppData\Local\Programs\Microsoft VS Code\Code.exe"

function vs-code {
    & $code $args
}

function git-status {
    & $git 'status'
}

function git-branch {
    & $git 'branch'
}

function git-checkout {
    & $git 'checkout' $args
}

function git-checkout-branch {
    & $git 'checkout' '-b' $args
}

function git-log {
    & $git 'log' $args
}

function git-add-all {
    & $git 'add' '--all' $args
}

function git-commit {
    & $git 'commit' '-a' '-m' $args
}

function docker-ps {
    & $docker 'ps'
}

function docker-ps-a {
    & $docker 'ps' '-a'
}

function docker-ps-aq {
    & $docker 'ps' '-aq'
}

function docker-images {
    & $docker 'images'
}
function docker-remove-images {
    & $docker 'rmi' $args
}

function docker-stop-all {
    & $docker 'stop' '$(docker ps -aq)'
}

function docker-container-stop {
    & $docker 'container' 'stop' $args
}

function docker-container-logs{
    & $docker 'container' 'logs' $args
}

function docker-container-top{
    & $docker 'container' 'top' $args
}

function docker-network-ls {
    & $docker 'network' 'ls'    
}

function docker-ip {
    & $docker 'container' 'inspect' '--format' '\'{{ .NetworkSettings.IPAddress }}\'' $args
}

function ubuntu-bash {
    & $docker 'run' '-ti' '--name' $args 'ubuntu' 'bash'
    
}

function jdk-11 {
    & setx -m JAVA_HOME "C:\Progra~1\Java\jdk-11.0.4"    
    & $profile
}

function jdk-8 {
    & setx -m JAVA_HOME "C:\Progra~1\AdoptOpenJDK\jdk-8.0.222.10-hotspot\"    
    & $profile
}

function profile {
    & $code $PROFILE  
}

Set-Alias gst git-status
Set-Alias gco git-checkout
Set-Alias gcob git-checkout-branch
Set-Alias glo git-log
Set-Alias gaa git-add-all
Set-Alias gcam git-commit
Set-Alias gb git-branch
Set-Alias pf profile
Set-Alias kod vs-code
Set-Alias jdk8 jdk-8
Set-Alias jdk11 jdk-11

Set-Alias dps docker-ps
Set-Alias dpsa docker-ps-a
Set-Alias dpsaq docker-ps-aq
Set-Alias dim docker-images
Set-Alias dcstop docker-container-stop
Set-Alias dclogs docker-container-logs
Set-Alias dctop docker-container-top
Set-Alias dnls docker-network-ls
Set-Alias dip docker-ip
Set-Alias dcrmi docker-remove-images
Set-Alias dsta docker-stop-all
Set-Alias ubuntubash ubuntu-bash
