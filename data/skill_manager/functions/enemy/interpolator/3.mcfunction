##############################
### Swim補正
##############################

execute store result score $SwimCount Global run data get entity @s Attributes.[0].Modifiers.[0].Amount 10
scoreboard players add $SwimCount Global 1
execute store result entity @s Attributes.[0].Modifiers.[0].Amount double 0.1 run scoreboard players get $SwimCount Global

