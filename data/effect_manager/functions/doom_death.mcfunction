##############################
### 死の死亡処理
##############################

gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"}," は死の運命から逃れられなかった。"]
gamerule showDeathMessages true
scoreboard players reset @s DoomCount