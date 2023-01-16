if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

# To set nice prompt messages
function fish_prompt
    set_color cyan
    echo "zocsaa@ ~> "
end

set -g fish_prompt_pwd_dir_length 0

function fish_right_prompt
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showstashstate 1
    set -g __fish_git_prompt_showcolorhints 1
    set -g __fish_git_prompt_color_branch --bold purple
    set -g __fish_git_prompt_color_upstream normal
    set -g __fish_git_prompt_color_cleanstate green
    set -g __fish_git_prompt_color_branch_detached blue
    set -g __fish_git_prompt_color_dirtystate blue
    set -g __fish_git_prompt_color_flags blue
    echo (set_color yellow)(prompt_pwd)
    echo (set_color normal)(fish_git_prompt)
end
