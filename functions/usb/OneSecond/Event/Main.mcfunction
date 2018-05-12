execute @s[score_EventRank=-1] ~ ~ ~ /function usb:OneSecond/Event/Event-1
execute @s[score_EventRank_min=0,score_EventRank=9] ~ ~ ~ /function usb:OneSecond/Event/Event0
execute @s[score_EventRank_min=10,score_EventRank=19] ~ ~ ~ /function usb:OneSecond/Event/Event1
execute @s[score_EventRank_min=20,score_EventRank=29] ~ ~ ~ /function usb:OneSecond/Event/Event2
execute @s[score_EventRank_min=30,score_EventRank=39] ~ ~ ~ /function usb:OneSecond/Event/Event3
execute @s[score_EventRank_min=40,score_EventRank=49] ~ ~ ~ /function usb:OneSecond/Event/Event4
execute @s[score_EventRank_min=50,score_EventRank=59] ~ ~ ~ /function usb:OneSecond/Event/Event5
execute @s[score_EventRank_min=60,score_EventRank=69] ~ ~ ~ /function usb:OneSecond/Event/Event6
execute @s[score_EventRank_min=70,score_EventRank=79] ~ ~ ~ /function usb:OneSecond/Event/Event7
execute @s[score_EventRank_min=80,score_EventRank=89] ~ ~ ~ /function usb:OneSecond/Event/Event8
execute @s[score_EventRank_min=90,score_EventRank=99] ~ ~ ~ /function usb:OneSecond/Event/Event9
function usb:Random/Root
scoreboard players operation @s Random %= #100 Const
scoreboard players operation @s Random += #ConquerPctInt Global
scoreboard players operation @s Random -= #100 Const
scoreboard players operation @s EventRank = @s Random
function usb:Random/Root
scoreboard players operation @s Random %= #1000 Const
execute @s[score_Random=200] ~ ~ ~ scoreboard players operation @s EventRank = @s Random
scoreboard players operation @s EventRank %= #100 Const
scoreboard players tag @s remove CauseEvent
