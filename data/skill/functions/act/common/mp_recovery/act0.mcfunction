
### MP回復 発動

execute if score _ Level matches 1 run scoreboard players set _ _ 25
execute if score _ Level matches 2 run scoreboard players set _ _ 50
execute if score _ Level matches 3 run scoreboard players set _ _ 100
execute if score _ Level matches 4 run scoreboard players set _ _ 200

scoreboard players operation @s MP += _ _
scoreboard players operation @s MP < @s MPMax
function player:mp_bar/set

function makeup:skill/act/common/mp_recovery/act0
