#> job:level_up/loop
scoreboard players add @s Level 1
scoreboard players operation @s _ = @s Level
scoreboard players set _ _ 50
scoreboard players operation @s _ < _ _
scoreboard players operation @s Exp -= @s RequiredExp
scoreboard players operation @s RequiredExp = @s _
scoreboard players set _ _ 10
scoreboard players operation @s RequiredExp /= _ _
scoreboard players operation @s RequiredExp += $World RequiredExp
scoreboard players operation @s RequiredExp *= @s _

execute if score @s Exp >= @s RequiredExp run function job:level_up/loop
