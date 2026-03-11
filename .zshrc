
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""  # prompt 由 starship 接管

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# ===== 环境变量 =====
export MAVEN_HOME=/usr/local/apache-maven-3.8.8
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE="auto"
export GOPRIVATE=gitlab.duxiaoman-int.com
export MYSQL_PATH=/usr/local/mysql
export JAVA_HOME=/Users/dxm/Library/Java/JavaVirtualMachines/corretto-1.8.0_422/Contents/Home

# ===== PATH =====
export PATH="\
/Users/dxm/.codeium/windsurf/bin:\
/Users/dxm/.opencode/bin:\
/Applications/Codex.app/Contents/Resources:\
$HOME/Library/Python/3.11/bin:\
/Library/Frameworks/Python.framework/Versions/3.11/bin:\
$JAVA_HOME/bin:\
$GOROOT/bin:\
$GOPATH/bin:\
$MAVEN_HOME/bin:\
$MYSQL_PATH/bin:\
/usr/local/nvim-macos-arm64/bin:\
/usr/local/gradle-4.8.1/bin:\
$PATH"

# ===== 工具初始化 =====
# fnm node version management
eval "$(fnm env --use-on-cd --shell zsh)"

# uv / rustup env
. "$HOME/.local/bin/env"

# starship prompt
eval "$(starship init zsh)"

# ===== 别名 =====
alias rp='rap -u wangmingyao_dxm'
alias relay='~/bin/relay/relay_tui.py'
