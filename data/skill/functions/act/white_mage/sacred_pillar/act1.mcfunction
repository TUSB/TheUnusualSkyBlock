
### セイクリッドピラー発動

#(減少HP / 最大HP) * 1000 を取得
execute store result score _ Calc run attribute @s minecraft:generic.max_health get 1000
scoreboard players operation _ SpecialAttack = _ Calc
execute store result score _ _ run data get entity @s Health 1000
scoreboard players operation _ SpecialAttack -= _ _
scoreboard players set _ _ 1000
scoreboard players operation _ SpecialAttack *= _ _
scoreboard players operation _ SpecialAttack /= _ Calc

#ダメージあれば成功
execute if score _ SpecialAttack matches ..0 run function makeup:skill/act/white_mage/sacred_pillar/failure
execute if score _ SpecialAttack matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[Skill,SacredPillar,NativeTask],Duration:1}
execute if score _ SpecialAttack matches 1.. as @e[tag=SacredPillar,tag=!Initialized,limit=1,distance=..0.01] run function skill:act/white_mage/sacred_pillar/success

#HP回復
effect give @s minecraft:instant_health 1 20 true
