execute store result score $SwimCount Global run data get entity @s Attributes.[0].Modifiers.[0] 1
execute store result score $SwimRevision Global run data get entity @s Attributes.[1].Modifiers.[6] 1
scoreboard players operation $SwimCount Global += $SwimRevision Global
execute store result entity @s Attributes.[0].Modifiers.[0] double 1 run scoreboard players get $SwimCount Global






