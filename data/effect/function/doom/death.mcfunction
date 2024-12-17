#> effect:doom/death
### 死の宣告 死亡

gamerule showDeathMessages false
kill @s[gamemode=!creative]
function makeup:effect/doom/death
gamerule showDeathMessages true
scoreboard players reset @s DoomCount
