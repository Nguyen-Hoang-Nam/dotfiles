export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

export MANPAGER="nvim +Man!"

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm

export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export GOPATH="$XDG_DATA_HOME"/go

export CARGO_HOME="$XDG_DATA_HOME"/cargo

export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

export ZSH=$XDG_CONFIG_HOME/zsh
export NVIM=$XDG_CONFIG_HOME/nvim

export ANDROID_SDK_HOME=$HOME

export JAR="$XDG_DATA_HOME/lsp/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.200.v20210416-2027.jar"
# export GRADLE_HOME=/opt/gradle/gradle-7.1.1
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# export JDTLS_CONFIG="$XDG_DATA_HOME/lsp/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux"
# export JDTLS_HOME="$XDG_DATA_HOME/lsp/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository"
export WORKSPACE="$XDG_DATA_HOME/java"

export VAGRANT_DEFAULT_PROVIDER=kvm

export AWS_DEFAULT_REGION="ap-southeast-1"

HISTFILE=$XDG_DATA_HOME/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

KEYTIMEOUT=1
. "/home/nguyenhoangnam/.local/share/cargo/env"
