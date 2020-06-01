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
alias gotot="cd ~/Documents/theremin && setpersogit"
alias gotoy="cd ~/Documents/youtube"
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
alias br="git branch | grep \" \""
alias gitbr="git branch | grep \" \""
alias brdel="git branch | grep -v \* | xargs git branch -D"
alias gitbrdel="git branch | grep -v \* | xargs git branch -D"
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

# Jonathan alias Android - WebP
# https://developers.google.com/speed/webp/download
alias cwebp="/Users/jonathan/Documents/cwebp/bin/cwebp"

# Android compilation
# https://source.android.com/setup/build/initializing
# set the number of open files to be 1024
ulimit -S -n 1024

# ------------------ JONATHAN ------------------ #
# ---------------------------------------------- #
