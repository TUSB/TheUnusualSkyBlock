
### HP・MP割合回復

execute if score _ Level matches 1 run scoreboard players set _ HPMax 60
execute if score _ Level matches 1 run scoreboard players set _ MPMax 30
execute if score _ Level matches 2 run scoreboard players set _ HPMax 120
execute if score _ Level matches 2 run scoreboard players set _ MPMax 60
execute if score _ Level matches 3 run scoreboard players set _ HPMax 200
execute if score _ Level matches 3 run scoreboard players set _ MPMax 100

scoreboard players set _ _ 100

#HP
execute store result score @s _ run attribute @s generic.max_health get 100
scoreboard players operation @s _ *= _ HPMax
scoreboard players operation @s _ /= _ _
scoreboard players operation @s _ /= _ _
scoreboard players operation @s HealthHealing += @s _

#MP
scoreboard players operation @s _ = @s MPMax
scoreboard players operation @s _ *= _ MPMax
scoreboard players operation @s _ /= _ _
scoreboard players operation @s MP += @s _
scoreboard players operation @s MP < @s MPMax

function makeup:skill/act/common/hpmp_percentage_recovery/act0
