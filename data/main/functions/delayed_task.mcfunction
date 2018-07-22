##############################
### １ティック遅れ処理
##############################

execute if entity @s[tag=DelayedMotion] run function calc_manager:load/motion
tag @s[tag=DelayedMotion] remove DelayedMotion

###ジオクラッシュ判定適用処理
execute as @s[tag=GeoCrash2] run function skill_manager:black_mage/geo_crash/occur

###ダークスワンプ復帰処理
effect give @s[tag=DarkSwampLevitation2,nbt={OnGround:true}] minecraft:levitation 1 1 true
tag @s[tag=DarkSwampLevitation2] remove DarkSwampLevitation2

###セイクリッドピラー発動処理
execute if score @s PillarDamage matches 0.. run function skill_manager:white_mage/sacred_pillar/act2
scoreboard players reset @s[scores={PillarDamage=0..}] PillarDamage

###真空切りモーション増加処理
execute if entity @s[tag=Accelerate] run function skill_manager:knight/aerial_slash/accelerate

###ふかふかケージ
execute if entity @s[tag=Caught] run function skill_manager:summoner/fukafuka/cage_delayed

###共通タグ削除
tag @s remove DelayedTask

###ダークスワンプ復帰は2tick遅らせる必要がある
tag @s[tag=DarkSwampLevitation] add DarkSwampLevitation2
tag @s[tag=DarkSwampLevitation] remove DarkSwampLevitation
tag @s[tag=DarkSwampLevitation2] add DelayedTask

###ジオクラッシュも2tick遅らせる
tag @s[tag=GeoCrash] add GeoCrash2
tag @s[tag=GeoCrash] add DelayedTask
