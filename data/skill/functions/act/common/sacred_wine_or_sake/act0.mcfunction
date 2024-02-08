##############################
### 神酒発動
##############################

scoreboard players set _ _ 100

#HP全回復
execute store result score @s _ run attribute @s minecraft:generic.max_health get 200
scoreboard players operation @s _ /= _ _
scoreboard players operation @s HealthHealing += @s _

#MP全回復
scoreboard players operation @s MP = @s MPMax
function player:mp_bar/set

#免疫100%
scoreboard players set @s ResistEffects 100

#演出
function makeup:skill/act/common/sacred_wine_or_sake/act0
