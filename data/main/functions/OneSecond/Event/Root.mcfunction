execute 0-0-1-0-1 ~ ~ ~ /execute @a[tag=CauseEvent,score_Dimension_min=0,score_Dimension=0,c=1] ~ ~ ~ /scoreboard players test #SecCount Global 0 *
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /execute @a[tag=CauseEvent,score_Dimension_min=0,score_Dimension=0] ~ ~ ~ /function usb:OneSecond/Event/Main
