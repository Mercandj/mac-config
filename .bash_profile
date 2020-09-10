# brew install zsh zsh-completions
# https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7

# Jonathan: Android global variables
export ANDROID_SDK=/Users/jonathan/Library/Android/sdk
export ANDROID_HOME=/Users/jonathan/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/jonathan/Documents/cwebp/bin/
export ANDROID_NDK=/Users/jonathan/Library/Android/sdk/ndk-bundle

# Jonathan: Default text editor in the terminal
export EDITOR="/Applications/Sublime Text.app/Contents/MacOS/Sublime Text"

# Jonathan: FLutter
# https://flutter.io/setup-macos/
export PATH=~/Documents/flutter/bin:$PATH

# Jonathan
export PATH=$PATH:/Users/jonathan/.apkstudio/vendor

# Jonathan: Alias
alias finder="open ."
alias goto="cd ~/Desktop"
alias gotoa="cd ~/Documents/mwm-audio && setprogit"
alias gotoapp="cd ~/Documents/app-kits && setprogit"
alias gotob="cd ~/Documents/browser && setpersogit"
alias gotoba="cd ~/Documents/bassbooster && setprogit"
alias gotobass="cd ~/Documents/bassbooster && setprogit"
alias gotod="cd ~/Documents/drums-app && setprogit"
alias gotody="cd ~/Documents/dynamic-screen-android && setprogit"
alias gotoe="cd ~/Documents/edjing && setprogit"
alias gotoeq="cd ~/Documents/equalizer-plus && setprogit"
alias gotof="cd ~/Documents/file-android && setpersogit"
alias gotog="cd ~/Documents/guitar-tuner && setprogit"
alias gotol="cd ~/Documents/launcher && setpersogit"
alias gotom="cd ~/Documents/mercandalli-android && setpersogit"
alias gotoma="cd ~/Documents/mac-config && setpersogit"
alias gotomav="cd ~/Documents/maven && setprogit"
alias gotomaven="cd ~/Documents/maven && setprogit"
alias gotome="cd ~/Documents/metronome-android && setprogit"
alias gotop="cd ~/Documents/publishing-sdk-android && setprogit"
alias gotor="cd ~/"
alias gotos="cd ~/Documents/sampler-app && setprogit"
alias gotosdk="cd $ANDROID_SDK"
alias gotoss="cd ~/Documents/AndroidSoundSystemV2 && setprogit"
alias gotot="cd ~/Documents/taozen-android && setprogit"
alias gotoy="cd ~/Documents/youtube && setpersogit"
alias gotoyoo="cd ~/Documents/yootoob && setprogit"
alias gotov="cd ~/Documents/video && setpersogit"
alias gotow="cd ~/Documents/"
alias gotowa="cd ~/Documents/wallpaper-android && setprogit"

# Jonathan: Alias Git
alias runserver="gotof; ./run-server.sh"
alias ls="ls -l -a"
alias adbd="adb devices -l"
alias adbi="adb install -r "
alias add="git add ."
alias gc="git commit"
alias commit="git commit"
alias commitm="git commit -m"
alias res="git reset -q --hard HEAD --"
alias cherrypick="git cherry-pick -x"
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
alias diff="git diff HEAD"
alias dev="git checkout dev"
alias master="git checkout master"
alias gp="git pull"
alias pull="git pull"
alias pullmav="pushd ~/Documents/maven && pull && popd"
alias gitpull="git pull"
alias push="git push"
alias pushf="git push -f"
alias pushu="git push -u origin"
alias gpush="git push"
alias clone="git clone"
alias am="git commit --am"
alias gam="git commit --am"
alias merge="git merge"
alias rebd="git rebase dev"
alias rebase="git rebase"
alias rebasec="git rebase --continue"
alias rebased="git rebase dev"
alias rebasedev="git rebase dev"
alias br="git branch"
alias gitbr="git branch"
alias brdel="git branch | grep -v \* | xargs git branch -D"
alias gitbrdel="git branch | grep -v \* | xargs git branch -D"
alias clr="git reset && git checkout -- ."
alias tag="git tag"
alias log="git log"
alias logme="git log --author=\"Jonathan\" --format=oneline"
alias logmemr="git log --author=\"Jonathan\" --format=oneline | grep -v \"Merge branch\""
alias ird="~/Documents/mac-config/script_install_run_debug.sh "
alias emul="pushd ${ANDROID_SDK}/emulator && ./emulator -list-avds && popd"
alias emus="~/Documents/mac-config/script_emulator_start.sh $1"

alias cls="clear"
alias adbopenurl="adb shell am start -a android.intent.action.VIEW -d "
alias adbuninstall="adb shell pm uninstall -k "

# Jonathan alias unity
alias unity='/Applications/Unity/Unity.app/Contents/MacOS/Unity'

# Jonathan alias Android
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
alias publish="./gradlew publishRelease"
alias publishy="gotoy && ./gradlew assembleUniversalRelease"
alias publishe="pullmav && gotoe && add && stash && dev && pull && ./gradlew edjingFree:publishRelease"
alias ktlint="./gradlew ktlint"
alias screenshot="adb shell screencap -p /sdcard/screen.png && adb pull /sdcard/screen.png && adb shell rm /sdcard/screen.png"
alias server="gotom && ./server/start.sh"

alias startHydra="gotoe && ./hydra/start.sh"
alias pullHydra="gotoe && ./hydra/pull.sh"
alias stopHydra="gotoe && ./hydra/stop.sh"

alias addr2line="${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e "
alias dex2jar='~/Documents/dex2jar/d2j-dex2jar.sh'
alias jd-gui='java -jar ~/Documents/dex2jar/jd-gui-1.4.0.jar'

alias setprogit="git config --global user.email 'jonathan.mercandalli@djit.fr' && git config --global user.name 'Jonathan'"
alias setpersogit="git config --global user.email 'modjow.jm9@gmail.com' && git config --global user.name 'Mercandj'"

# Connect Android CI local
alias androidci="ssh android-ci@10.12.2.58"
alias vincentci="ssh vbarthel@10.12.7.215"

# Android compilation
# https://source.android.com/setup/build/initializing
# set the number of open files to be 1024
ulimit -S -n 1024