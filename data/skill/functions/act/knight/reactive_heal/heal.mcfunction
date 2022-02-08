
### リアクティブヒール発動

execute if score _ Level matches 1 run scoreboard players set @s HealthHealing 4
execute if score _ Level matches 2 run scoreboard players set @s HealthHealing 8
execute if score _ Level matches 3 run scoreboard players set @s HealthHealing 14
execute if score _ Level matches 4 run scoreboard players set @s HealthHealing 20

function makeup:skill/act/knight/reactive_heal/heal
