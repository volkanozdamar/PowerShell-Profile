export ANDROID_HOME=/Users/volkan.ozdamar/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH

# Set JAVA_HOME system environment variable value.
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export ADOPT_8_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias adopt8='export JAVA_HOME=$ADOPT_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias javav='/usr/libexec/java_home -V'

#default java8
export JAVA_HOME=$JAVA_8_HOME

# Add java bin folder in PATH system environment variable value.
export PATH=$PATH:$JAVA_HOME/bin

alias profile='code  ~/.zprofile'

#Docker
function docker-stop-all {
    docker stop $(docker ps -aq)
}

#tools
function json-format {
    echo "#####################################################################"
    jq . <<< $@ 
}



alias dcstop='docker-stop-all'
alias dcls='docker container ls'
alias json='json-format'
alias cls=clear
alias andui=uiautomatorviewer

