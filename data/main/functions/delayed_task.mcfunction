##############################
### １ティック遅れ処理
##############################

###ダークスワンプ復帰処理
effect give @s[tag=DarkSwampLevitation2,nbt={OnGround:true}] minecraft:levitation 1 1 true
tag @s[tag=DarkSwampLevitation2] remove DarkSwampLevitation2

###セイクリッドピラー発動処理
execute if score @s PillarDamage matches 0.. run function skill_manager:white_mage/sacred_pillar/act2
scoreboard players reset @s[scores={PillarDamage=0..}] PillarDamage

###ラピッド指定で遅いものを削除
execute as @s[tag=VelocityRequired] run function entity_manager:check_velocity

###共通タグ削除
tag @s remove DelayedTask

###ダークスワンプ復帰は2tick遅らせる必要がある
tag @s[tag=DarkSwampLevitation] add DarkSwampLevitation2
tag @s[tag=DarkSwampLevitation] remove DarkSwampLevitation
tag @s[tag=DarkSwampLevitation2] add DelayedTask
