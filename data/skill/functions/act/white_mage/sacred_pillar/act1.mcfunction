
### セイクリッドピラー発動

#減少HPを取得
execute store result score _ SpecialAttack run attribute @s minecraft:generic.max_health get 10
execute store result score _ _ run data get entity @s Health 10
scoreboard players operation _ SpecialAttack -= _ _

#ダメージあれば成功
execute if score _ SpecialAttack matches ..0 run function makeup:skill/act/white_mage/sacred_pillar/failure
execute if score _ SpecialAttack matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[Skill,SacredPillar,NativeTask],Duration:1}
execute if score _ SpecialAttack matches 1.. as @e[tag=SacredPillar,tag=!Initialized,limit=1,distance=..0.01] run function skill:act/white_mage/sacred_pillar/success

#HP回復
effect give @s minecraft:instant_health 1 20 true
