
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
alias add="git add ."
alias gc="git commit"
alias commit="git commit"
alias commitm="git commit -m"
alias gs="git status"
alias st="git status"
alias gst="git status"
alias gitst="git status"
alias gitstatus="git status"
alias gitstash="git stash"
alias stash="stash"
alias go="git checkout"
alias co="git checkout"
alias gitco="git checkout"
alias dev="git checkout dev"
alias gp="git pull"
alias pull="git pull"
alias gitpull="git pull"
alias push="git push"
alias pushf="git push -f"
alias gpush="git push"
alias am="git commit --am"
alias gam="git commit --am"
alias cls="clear"
alias rebd="git rebase dev"
alias rebase="git rebase"
alias rebasec="git rebase --continue"
alias rebased="git rebase dev"
alias rebasedev="git rebase dev"
alias br="git branch"
alias gitbr="git branch"
alias brdel="git branch | grep -v \* | xargs git branch -D"
alias gitbrdel="git branch | grep -v \* | xargs git branch -D"
alias adbopenurl="adb shell am start -a android.intent.action.VIEW -d "