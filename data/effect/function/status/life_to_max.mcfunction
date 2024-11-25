
###最大ステータスにする

function effects:status/modify_max
scoreboard players operation @s MP = @s MPMax
effect give @s minecraft:instant_health 1 10
function player:mp_bar/set
