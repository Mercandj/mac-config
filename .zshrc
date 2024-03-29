# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jonathan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# ---------------------------------------------- #
# ------------------ JONATHAN ------------------ #

# brew install zsh zsh-completions
# https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7

# --------------- JONATHAN antigen ------------- #
# https://github.com/zsh-users/antigen
source /Users/jonathan/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell

# https://github.com/geometry-zsh/geometry
antigen theme geometry-zsh/geometry
GEOMETRY_PROMPT_PLUGINS=(exec_time git hg dir-info-prompt +rustup)
GEOMETRY_COLOR_DIR="cyan"
# https://github.com/desyncr/geometry-dir-info-prompt
antigen bundle desyncr/geometry-dir-info-prompt

# Tell Antigen that you're done.
antigen apply
# ---------------------------------------------- #


# ----------------- JONATHAN pad --------------- #
# https://superuser.com/questions/742171/zsh-z-shell-numpad-numlock-doesnt-work
# Keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"
# ---------------------------------------------- #


# Jonathan: Android global variables
export ANDROID_SDK=/Users/jonathan/Library/Android/sdk
export ANDROID_HOME=/Users/jonathan/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/jonathan/Documents/cwebp/bin/
export ANDROID_NDK=/Users/jonathan/Library/Android/sdk/ndk-bundle

# Java 11
# -> brew install openjdk@11
#    sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
#    export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
#    export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
#    export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home
# OR -> https://stackoverflow.com/a/24657630/12057504
#       https://www.azul.com/downloads/?version=java-11-lts&os=macos&architecture=arm-64-bit&package=jdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# export JAVA_HOME=/opt/homebrew/Cellar/openjdk/18.0.1.1/libexec/openjdk.jdk/Contents/Home

# Jonathan: Brew mac M1
# https://stackoverflow.com/a/65760032/12057504
export PATH=/opt/homebrew/bin:$PATH

# Jonathan: iOS Jailbreak AppSync
export THEOS=~/Documents/theos

# Jonathan: Default text editor in the terminal
export EDITOR="/Applications/Sublime Text.app/Contents/MacOS/Sublime Text"

# Jonathan: FLutter
# https://flutter.io/setup-macos/
export PATH=~/Documents/flutter/bin:$PATH

# Jonathan
export PATH=$PATH:/Users/jonathan/.apkstudio/vendor

# Jonathan: MWM
export MWM_MAVEN_PATH=/Users/jonathan/Documents/maven

# Jonathan: Alias
alias aapt="$ANDROID_HOME/build-tools/27.0.3/aapt"
alias adbd="adb devices -l"
alias adbi="adb install -r "
alias adbinstall="adb devices | tail -n +2 | cut -sf 1 | xargs -I {} adb -s {} install -r " # argument: apk
alias adbopenurl="adb shell am start -a android.intent.action.VIEW -d "
alias adbuninstall="adb devices | tail -n +2 | cut -sf 1 | xargs -I {} adb -s {} shell pm uninstall -k " # argument: package name
alias add="git add ."
alias addr2line="${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e "
alias am="git commit --am"
alias apkinstall="adb devices | tail -n +2 | cut -sf 1 | xargs -I X adb -s X install -r $1"
alias assd="~/Documents/mac-config/script_assemble_debug.sh "
alias assembleDebug="~/Documents/mac-config/script_assemble_debug.sh "
alias assembleRelease="~/Documents/mac-config/script_assemble_release.sh "
alias assr="~/Documents/mac-config/script_assemble_release.sh "
alias br="git branch | grep \" \""
alias brdel="git branch | grep -v \* | xargs git branch -D"
alias buildAndInstallDebugApk="./gradlew assembleUniversalDebug && apkinstall ./app/build/outputs/apk/universal/debug/app-universal-debug.apk"
alias buildAndInstallReleaseApk="./gradlew assembleUniversalRelease && apkinstall ./app/build/outputs/apk/universal/release/app-universal-release.apk"
alias cherrypick="git cherry-pick -x"
alias cleandevice="/Users/jonathan/Documents/mercandalli-android/config/script/android_clean_device/android_clean_device_all_devices.sh"
alias clone="git clone"
alias clr="git reset && git checkout -- ."
alias cls="clear"
alias co="git checkout"
alias commit="git commit"
alias commitm="git commit -m"
alias dev="git checkout dev"
alias dex2jar='~/Documents/dex2jar/d2j-dex2jar.sh'
alias diff="git diff HEAD"
alias emul="pushd ${ANDROID_SDK}/emulator && ./emulator -list-avds && popd"
alias emus="~/Documents/mac-config/script_emulator_start.sh $1"
alias finder="open ."
alias gam="git commit --am"
alias gc="git commit"
alias gfix="git add . && git commit --am --no-edit && git push -f" # Fred alias
alias gitbr="git branch | grep \" \""
alias gitbrdel="git branch | grep -v \* | xargs git branch -D"
alias gitco="git checkout"
alias gitpull="git pull"
alias gitst="git status"
alias gitstash="git stash"
alias gitstatus="git status"
alias go="git checkout"
alias goto="cd ~/Desktop"
alias gotoa="cd ~/Documents/mwm-audio && setprogit"
alias gotoads="cd ~/Documents/ads-kit && setprogit"
alias gotoapp="cd ~/Documents/app-kits && setprogit"
alias gotoba="cd ~/Documents/bassbooster && setprogit"
alias gotobass="cd ~/Documents/bassbooster && setprogit"
alias gotod="cd ~/Documents/drums-app && setprogit"
alias gotody="cd ~/Documents/dynamic-screen-android && setprogit"
alias gotoe="cd ~/Documents/edjing && setprogit"
alias gotoeq="cd ~/Documents/equalizer-plus && setprogit"
alias gotofi="cd ~/Documents/files-kit && setprogit"
alias gotog="cd ~/Documents/guitar-tuner && setprogit"
alias gotolo="cd ~/Documents/lokalise-android && setprogit"
alias gotom="cd ~/Documents/mercandalli-android && setpersogit"
alias gotoma="cd ~/Documents/mac-config && setpersogit"
alias gotomav="cd ~/Documents/maven && setprogit"
alias gotomaven="cd ~/Documents/maven && setprogit"
alias gotome="cd ~/Documents/metronome-android && setprogit"
alias goton="cd ~/Documents/nft-land-android && setprogit"
alias gotoo="cd ~/Documents/toonify && setprogit"
alias gotop="cd ~/Documents/pro-color-android && setprogit"
alias gotor="cd ~/"
alias gotos="cd ~/Documents/stemz-android && setprogit"
alias gotosdk="cd $ANDROID_SDK"
alias gotoss="cd ~/Documents/AndroidSoundSystemV2 && setprogit"
alias gotot="cd ~/Documents/taozen-android-v3 && setprogit"
alias gototoo="cd ~/Documents/toonify && setprogit"
alias gotow="cd ~/Documents/"
alias gotowa="cd ~/Documents/wallpaper-android && setprogit"
alias gotoyoo="cd ~/Documents/yootoob && setprogit"
alias gp="git pull"
alias gpush="git push"
alias gs="git status"
alias gst="git status"
alias inkscape="/Applications/Inkscape.app/Contents/MacOS/inkscape"
alias iosird="/Users/jonathan/Documents/mercandalli-android/multi_platform_ios/ird.sh"
alias iosu="/Users/jonathan/Documents/mercandalli-android/multi_platform_ios/script/run_debug.sh" # Update certifs to a connected iOS device (non simulator)
alias ird="~/Documents/mac-config/script_install_run_debug.sh " # https://crushingcode.nisrulz.com/posts/how-i-reduced-android-build-times
alias irr="~/Documents/mac-config/script_install_run_release.sh " # https://crushingcode.nisrulz.com/posts/how-i-reduced-android-build-times
alias jd-gui='java -jar ~/Documents/dex2jar/jd-gui-1.4.0.jar'
alias ktformat="~/Documents/mac-config/script_ktformat.sh "
alias ktlint="~/Documents/mac-config/script_ktlint.sh "
alias log="git log"
alias logme="git log --author=\"Jonathan\" --format=oneline"
alias logmemr="git log --author=\"Jonathan\" --format=oneline | grep -v \"Merge branch\""
alias ls="ls -l -a"
alias master="git checkout master"
alias merge="git merge"
alias publish="./gradlew publishRelease"
alias publishe="pullmav && gotoe && add && stash && dev && pull && ./gradlew edjingFree:publishRelease"
alias publishy="gotoy && ./gradlew assembleUniversalRelease"
alias pull="git pull"
alias pullmav="pushd ~/Documents/maven && pull && popd"
alias pullmavs="pushd ~/Documents/mercandalli-android && ./config/script/mwm/pull_mavens.sh && popd"
alias push="git push"
alias pushf="git push -f"
alias pushu="git push -u origin"
alias rebase="git rebase"
alias rebasec="git rebase --continue"
alias rebased="git rebase dev"
alias rebasedev="git rebase dev"
alias rebd="git rebase dev"
alias res="git reset -q --hard HEAD --"
alias runserver="gotom && ./server/start.sh"
alias runy="rundy"
alias screenshot="adb shell screencap -p /sdcard/screen.png && adb pull /sdcard/screen.png && adb shell rm /sdcard/screen.png"
alias server="gotom && ./server/start.sh"
alias setpersogit="git config --global user.email 'modjow.jm9@gmail.com' && git config --global user.name 'Mercandj'"
alias setprogit="git config --global user.email 'jonathan.mercandalli@djit.fr' && git config --global user.name 'Jonathan'"
alias st="git status"
alias stash="git stash"
alias tag="git tag"
alias unity='/Applications/Unity/Unity.app/Contents/MacOS/Unity' # Jonathan alias unity

# Jonathan: Create Merge Request like that: mr jm/home-screen-skeleton "[HomeScreen] Skeleton"
function mr() {
    if [ $# -ne 2 ]; then
        echo "Usage: mr [branch_name] [commit_message]"
        return
    fi
    setprogit
    echo "MR bash function"
    BRANCH_NAME=$1
    COMMIT_MESSAGE=$2
    echo "branch_name: $BRANCH_NAME"
    echo "commit_message: $COMMIT_MESSAGE"
    PROJECT_URL="${"${"${"$(git config --get remote.origin.url)"/".git"/""}"/":"/"/"}"/"git@"/"https://"}"
    git add --all
    git checkout -b $BRANCH_NAME
    git commit -m $COMMIT_MESSAGE
    git push --set-upstream origin $BRANCH_NAME # --push-option=merge_request.create --push-option=merge_request.label="mr::to-review"
    open "https://code.musicworldmedia.com/"
}

# Jonathan alias Android - WebP
# https://developers.google.com/speed/webp/download
alias cwebp="/Users/jonathan/Documents/cwebp/bin/cwebp"

# Android compilation
# https://source.android.com/setup/build/initializing
# set the number of open files to be 1024
ulimit -S -n 1024

# ------------------ JONATHAN ------------------ #
# ---------------------------------------------- #

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jonathan/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jonathan/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jonathan/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jonathan/Documents/google-cloud-sdk/completion.zsh.inc'; fi
