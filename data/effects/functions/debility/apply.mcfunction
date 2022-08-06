
### 衰弱(HP１列)

execute store result score @s _ run data get entity @s Health 100

execute if score @s _ matches 2000.. run scoreboard players set @s ScoreToHealth 2000
execute if score @s _ matches 2000.. run function makeup:effects/debility/apply
