
# Jonathan: Android global variables
export ANDROID_SDK=/Users/jonathan/Library/Android/sdk
export ANDROID_HOME=/Users/jonathan/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_NDK=/Users/jonathan/Library/Android/sdk/ndk-bundle

# Jonathan: Default text editor in the terminal
export EDITOR="/Applications/TextEdit.app/Contents/MacOS/TextEdit"

# Jonathan: Alias
alias finder="open ."
alias gotor="cd ~/"
alias gotow="cd ~/Documents/"
alias gotog="cd ~/Documents/gravity-music"
alias gotos="cd ~/Documents/sampler-app"
alias gotot="cd ~/Documents/theremin"
alias gotoy="cd ~/Documents/youtube"
alias gotod="cd ~/Documents/drums-app"
alias gotoyoo="cd ~/Documents/yootoob"
alias gc="git commit"
alias commit="git commit"
alias gs="git status"
alias gst="git status"
alias gitstatus="git status"
alias gitst="git status"
alias go="git checkout"
alias gitco="git checkout"
alias gp="git pull"
alias gitpull="git pull"
alias gpush="git push"
alias gam="git commit --am"
alias cls="clear"
alias gitbr="git branch"
alias gitbrdel="git branch | grep -v \* | xargs git branch -D"
alias adbopenurl="adb shell am start -a android.intent.action.VIEW -d "