execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test #SecCount Global 60 *
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /scoreboard players set #SecCount Global 0
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneMinute/Main if @s[score_Conditional_min=1]
