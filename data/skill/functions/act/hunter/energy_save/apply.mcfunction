
### エナジーセーブ適用

execute if score _ Level matches 1 run scoreboard players set _ _ 1
execute if score _ Level matches 2 run scoreboard players set _ _ 2
execute if score _ Level matches 3 run scoreboard players set _ _ 3
scoreboard players operation @s EnergySave > _ _

function makeup:skill/act/hunter/energy_save/apply
