
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
alias stash="git stash"
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
alias adbuninstall="adb shell pm uninstall -k "

# https://android.jlelse.eu/how-i-reduced-my-android-build-times-by-89-4242e51ce946
alias aapt="$ANDROID_HOME/build-tools/27.0.3/aapt"
alias apkinstall="adb devices | tail -n +2 | cut -sf 1 | xargs -I X adb -s X install -r $1"
alias buildAndInstallDebugApk="./gradlew assembleUniversalDebug && apkinstall ./app/build/outputs/apk/universal/debug/app-universal-debug.apk"
alias buildAndInstallReleaseApk="./gradlew assembleUniversalRelease && apkinstall ./app/build/outputs/apk/universal/release/app-universal-release.apk"
alias launchYoutubeApk="adb shell monkey -p com.mercandalli.android.apps.youtube 1"
alias runDebugYoutube="gotoy && buildAndInstallDebugApk && launchYoutubeApk"
alias rundy="gotoy && buildAndInstallDebugApk && launchYoutubeApk"
alias runry="gotoy && buildAndInstallReleaseApk && launchYoutubeApk"
alias runy="rundy"
alias publishy="gotoy && ./gradlew assembleUniversalRelease"

