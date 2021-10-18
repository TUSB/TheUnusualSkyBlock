##############################
### １ティック遅れ処理
##############################

# execute if entity @s[tag=DelayedMotion] run function calc_manager:load/motion
# tag @s[tag=DelayedMotion] remove DelayedMotion

###デコイ
execute as @s[tag=AvoidFalling2] run function skill:act/knight/decoy/avoid_falling

###ロックンロール判定適用処理
# execute as @s[tag=GeoCrash2] run function skill:act/black_mage/geo_crash/occur

###ダークスワンプ復帰処理
# effect give @s[tag=DarkSwampLevitation2,nbt={OnGround:true}] minecraft:levitation 1 1 true
# tag @s[tag=DarkSwampLevitation2] remove DarkSwampLevitation2

###セイクリッドピラー発動処理
execute if score @s PillarDamage matches 0.. run function skill:act/white_mage/sacred_pillar/act1
scoreboard players reset @s[scores={PillarDamage=0..}] PillarDamage

###ぽんぽん突撃
execute if entity @s[tag=Assault] run function skill:act/summoner/ponpon/assault

###ふかふかケージ
# execute if entity @s[tag=Caught] run function skill:act/summoner/fukafuka/cage_delayed

### 2tick遅らせ処理
## デコイ
execute store success score _ _ run tag @s remove AvoidFalling
execute if score _ _ matches 1.. run tag @s add AvoidFalling2
## ダークスワンプ
# execute store success score _ _ run tag @s remove DarkSwampLevitation
# execute if score _ _ matches 1.. run tag @s add DarkSwampLevitation2
## ロックンロール
# execute store success score _ _ run tag @s remove GeoCrash
# execute if score _ _ matches 1.. run tag @s add GeoCrash2
###共通タグ削除

tag @s[tag=!AvoidFalling2,tag=!DarkSwampLevitation2,tag=!GeoCrash2] remove DelayedTask
