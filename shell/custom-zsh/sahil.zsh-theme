#!/bin/zsh
# PROMPT PIMPIN'
#
# autoload -U colors && colors
# COLORS from https://wiki.archlinux.org/index.php/zsh#Colors
# Options: $fg[color], $fg_no_bold[color], $fg_bold[color], $reset_color, $reset_color
# Colors: black, red, green, blue, yellow, magenta, cyan, white
#
# This a theme for oh-my-zsh. Features a colored prompt with:
# * username@host: [jobs] [git] workdir %
# * hostname color is based on hostname characters. When using as root, the
# prompt shows only the hostname in red color.
# * [jobs], if applicable, counts the number of suspended jobs tty
# * [git], if applicable, represents the status of your git repo (more on that
# later)
# * '%' prompt will be green if last command return value is 0, yellow otherwise.
#
# git prompt is inspired by official git contrib prompt:
# https://github.com/git/git/tree/master/contrib/completion/git-prompt.sh
# and it adds:
# * the current branch
# * '%' if there are untracked files
# * '$' if there are stashed changes
# * '*' if there are modified files
# * '+' if there are added files
# * '<' if local repo is behind remote repo
# * '>' if local repo is ahead remote repo
# * '=' if local repo is equal to remote repo (in sync)
# * '<>' if local repo is diverged

local green_bold="%{$fg_bold[green]%}"
local red_bold="%{$fg_bold[red]%}"
local cyan_bold="%{$fg_bold[cyan]%}"
local yellow_bold="%{$fg_bold[yellow]%}"
local blue_bold="%{$fg_bold[blue]%}"
local magenta_bold="%{$fg_bold[magenta]%}"
local white_bold="%{$fg_bold[white]%}"

local green="%{$fg[green]%}"
local red="%{$fg[red]%}"
local cyan="%{$fg[cyan]%}"
local yellow="%{$fg[yellow]%}"
local blue="%{$fg[blue]%}"
local magenta="%{$fg[magenta]%}"
local white="%{$fg[white]%}"
local reset="%{$reset_color%}"

local username_normal_color=$white
local hostname_normal_color=$yellow
local username_root_color=$red
local hostname_root_color=$red

hostname_color=%(!.$hostname_root_color.$hostname_normal_color)

local current_dir_color=$blue
local username_command="%n"
local hostname_command="%m"
local current_dir="%~"

local username_output="%(!..$username_normal_color$username_command$reset@)"
local hostname_output="$hostname_color$hostname_command$reset"
local current_dir_output="$current_dir_color$current_dir$reset"
local jobs_bg="${red}fg: %j$reset"
local last_command_output="%(?.%(!.$red.$green).$yellow)"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="$blue%%"
ZSH_THEME_GIT_PROMPT_MODIFIED="$red*"
ZSH_THEME_GIT_PROMPT_ADDED="$green+"
ZSH_THEME_GIT_PROMPT_STASHED="$blue$"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="$green="
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=">"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="<"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="$red<>"
TIME_PROMPT='%D{%H:%M:%S}'

GIT_PROMPT='$(out=$(git_prompt_info)$(git_prompt_status)$(git_remote_status);'
GIT_PROMPT+='if [[ -n $out ]]; then printf %s "$white" " [" "$green$out$white]$reset";fi)'


PROMPT='$username_output$hostname_output:$current_dir_output%1(j. [$jobs_bg].)'
PROMPT+="$GIT_PROMPT $last_command_output%(!.#.$)$reset "
RPROMPT="[$TIME_PROMPT]"
