
### ダークスワンプ処理

###ターゲット選択
execute as @e[distance=..5,tag=Enemy] positioned ~-5 ~-1 ~-5 run tag @s[dx=10,dy=2,dz=10] add DarkSwampTarget
###ダークスワンプ引き込み処理
execute as @e[tag=DarkSwampTarget,tag=!Unmoved] at @s run function skill:act/black_mage/dark_swamp/pull
###MP吸収量計算
scoreboard players set _ DarkSwamp 0
function skill:damage/load
execute as @e[tag=DarkSwampTarget] run function skill:act/black_mage/dark_swamp/total
###MP増加処理
scoreboard players set _ _ 3
scoreboard players operation _ DarkSwamp /= _ _
scoreboard players operation _ TrackingID = @s TrackingID
execute as @a if score @s OhMyDatID = _ TrackingID run scoreboard players operation @s MPConsumption -= _ DarkSwamp
###カウント減算
scoreboard players remove @s DarkSwamp 1
###魔法終了
tag @s[scores={DarkSwamp=1..}] remove Garbage
###インターバルタイマーリセット
data merge entity @s {PortalCooldown:40}
###ターゲット選択解除
tag @e[tag=DarkSwampTarget] remove DarkSwampTarget
