execute store result score $SwimCount Global run data get entity @s Attributes.[0].Modifiers.[0].Amount -100
execute store result score $SwimRevision Global run data get entity @s Attributes.[1].Modifiers.[3].Amount -100
scoreboard players operation $SwimCount Global += $SwimRevision Global
execute store result entity @s Attributes.[0].Modifiers.[0].Amount double 0.01 run scoreboard players get $SwimCount Global






