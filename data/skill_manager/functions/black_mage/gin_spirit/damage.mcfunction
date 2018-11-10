##############################
### ジン・スピリット攻撃
##############################

#AEC召喚・半径取得
execute unless entity @e[tag=GinAEC,limit=1,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[GinAEC],Particle:"minecraft:dust 1 0 0.5 1.5",Radius:0f,Duration:21,Effects:[{Id:10,Amplifier:2,Duration:20}]}
execute store result score $TotalDamage Global run data get entity @e[tag=GinAEC,limit=1,distance=..1] Radius 30000
#ダメージ付与・総ダメージ計算
scoreboard players operation $Damage Global = @s SkillAttribute
execute as @e[tag=Mob,distance=..4] run scoreboard players operation @s Damage += $Damage Global
execute as @e[tag=Mob,distance=..4] run scoreboard players operation $TotalDamage Global += $Damage Global
effect give @e[tag=Mob,distance=..4] minecraft:slowness 1 0 false
#半径設定
scoreboard players operation $TotalDamage Global < $400000 Const
execute if score $TotalDamage Global matches 1.. store result entity @e[tag=GinAEC,limit=1,distance=..0.1] Radius float 0.000015 run scoreboard players get $TotalDamage Global
execute store result entity @e[tag=GinAEC,limit=1,distance=..0.1] Age int 1 run scoreboard players get $0 Const

###---演出---Start
tp @s ~ ~-0.5 ~ facing entity @e[tag=Mob,distance=..4,limit=1,sort=nearest]
playsound minecraft:entity.guardian.death master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:dust 1 0 0.5 1.5 ~ ~2 ~ 0 1 0 1 10 force
execute as @e[tag=Mob,distance=..4] positioned as @s anchored eyes run particle minecraft:item minecraft:bubble_coral_block ^ ^ ^ 0 0 0 0.15 30 force
###---演出---End
