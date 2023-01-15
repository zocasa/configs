if status is-interactive
    # Commands to run in interactive sessions can go here
end

# To set nice prompt messages
function fish_prompt
    set_color cyan
    echo "zocsaa@ ~> "
end

set -g fish_prompt_pwd_dir_length 0

function fish_right_prompt
    set -g __fish_git_prompt_show_informative_status
    set -g __fish_git_prompt_showstashstate
    set -g __fish_git_prompt_showcolorhints
    set -g __fish_git_prompt_color_branch --bold purple
    set -g __fish_git_prompt_color_upstream normal
    set -g __fish_git_prompt_color_cleanstate green
    set -g __fish_git_prompt_color_branch_detached blue
    set -g __fish_git_prompt_color_dirtystate blue
    set -g __fish_git_prompt_color_flags blue
    echo (set_color yellow)(prompt_pwd)
    echo (set_color normal)(fish_git_prompt)
end

function fish_greeting
    set hor_offset_x 4
    set hor_offset_y 2
    set size 3
    set end_coord_x (math $size + $hor_offset_x)
    set end_coord_y (math $size + $hor_offset_y)
    set fish_trace 1
    for i in (seq $end_coord_y);
        for j in (seq $end_coord_x);
            echo -n $i
            echo -n $j

            function x_true
                return $j -eq $hor_offset_x -o $j -eq $end_coord_x
            end

            function y_true
                return $i -eq $hor_offset_y -o $i -eq $end_coord_y
            end

            function x_within_bound
                return $j -ge $hor_offset_x -a $j -le $end_coord_x
            end

            function y_within_bound
                return $i -ge $hor_offset_y -a $i -le $end_coord_y
            end

            #echo (return $j -eq $hor_offset_x)
            #echo (return $j -eq $end_coord_x)
            #echo (return $i -eq $hor_offset_y)
            #echo (return $i -eq $end_coord_y)
            #echo (return $j -ge $hor_offset_x)
            #echo (return $j -le $end_coord_x)
            #echo (return $i -ge $hor_offset_y)
            #echo (return $i -le $end_coord_y)

            #echo (x_true)
            #echo (y_true)
            #echo (x_within_bound)
            #echo (y_within_bound)

            function x_valid
                return x_true -a y_within_bound
            end

            function y_valid
                return y_true -a x_within_bound
            end

            #echo (x_valid)
            #echo (y_valid)

            if [ x_valid -o y_valid ];
                echo -n "*"
            else
                echo -n " "
            end
        end
        echo 
    end
    echo "Welcome EmZo Stark!!!"
end
