$git = "C:\Program Files\Git\cmd\git.exe"
$docker = "C:\Program Files\Docker\Docker\resources\bin\docker.exe"
$code = "C:\Users\volkan.ozdamar\AppData\Local\Programs\Microsoft VS Code Insiders\Code - Insiders.exe"

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

function jdk-12 {
    & setx -m JAVA_HOME "C:\Progra~1\Java\jdk-12"    
}


Set-Alias gst git-status
Set-Alias gco git-checkout
Set-Alias gcob git-checkout-branch
Set-Alias glo git-log
Set-Alias gaa git-add-all
Set-Alias gcam git-commit
Set-Alias gb git-branch

Set-Alias dps docker-ps
Set-Alias dpsa docker-ps-a
Set-Alias dpsaq docker-ps-aq
Set-Alias dim docker-images
Set-Alias kod vs-code