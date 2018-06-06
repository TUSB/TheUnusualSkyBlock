##############################
### ダークスワンプ引き込み処理
##############################

###引き込み処理
fill ~ ~ ~ ~ ~0.7499 ~ minecraft:structure_void keep
execute positioned ~ ~-0.2501 ~ align y if block ~ ~2 ~ minecraft:air run tp @s ~ ~ ~
fill ~ ~ ~ ~ ~0.7499 ~ minecraft:air replace minecraft:structure_void
execute at @s positioned ~ ~-0.0001 ~ align y unless block ~ ~1 ~ minecraft:air run tag @s add DelayedTask
tag @s[tag=DelayedTask] add DarkSwampLevitation
execute as @s[tag=DelayedTask] at @s positioned ~ ~-0.0001 ~ align y unless block ~ ~2 ~ minecraft:air at @s run tp @s ~ ~1 ~
###ファング召喚
summon minecraft:evocation_fangs ~ ~0.5 ~
