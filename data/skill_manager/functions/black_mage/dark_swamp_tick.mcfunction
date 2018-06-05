##############################
### ダークスワンプ処理
##############################

###ターゲット選択
execute as @e[distance=..5,tag=Mob] positioned ~-3 ~-1 ~-3 run tag @s[dx=6,dy=2,dz=6] add DarkSwampTarget
###引き込み処理
execute as @e[tag=DarkSwampTarget] at @s if block ~ ~0.999 ~ minecraft:air positioned ~ ~-0.25001 ~ align y run tp @s ~ ~ ~
tag @e[tag=DarkSwampTarget] add DelayedTask
tag @e[tag=DarkSwampTarget] add DarkSwampLevitation
###ファング召喚
execute as @e[tag=DarkSwampTarget] at @s run summon minecraft:evocation_fangs ~ ~0.5 ~
###MP吸収量計算
scoreboard players set $DarkSwampTotal DarkSwamp 0
execute if entity @s[tag=DarkSwamp1] as @e[tag=DarkSwampTarget] run function skill_manager:black_mage/dark_swamp_total1
execute if entity @s[tag=DarkSwamp2] as @e[tag=DarkSwampTarget] run function skill_manager:black_mage/dark_swamp_total2
###MP増加処理
scoreboard players operation $DarkSwampId ID = @s ID
execute as @a if score @s ID = $DarkSwampId ID run scoreboard players operation @s MPConsumption -= $DarkSwampTotal DarkSwamp
###カウント減算
scoreboard players remove @s DarkSwamp 1
###魔法終了
kill @s[scores={DarkSwamp=..0}]
###インターバルタイマーリセット
data merge entity @s {PortalCooldown:40}
###ターゲット選択解除
tag @e[tag=DarkSwampTarget] remove DarkSwampTarget
