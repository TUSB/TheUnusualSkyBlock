##############################
### アイスジャベリン先頭処理
##############################

###---演出---Start
particle minecraft:firework ~ ~1.52 ~ 0.3 0.3 0.3 0.2 6 force @a[tag=ShowParticles]
###---演出---End

scoreboard players operation $Id Global = @s ID

###紐付け
execute as @a if score @s ID = $Id Global run tag @s add Caster

### 行き帰り計算
execute if entity @s[tag=!Reversed] run function skill_manager:black_mage/ice_javelin/tick_forward
execute if entity @s[tag=Reversed] run function skill_manager:black_mage/ice_javelin/tick_backward

### 氷半減フラグ
scoreboard players operation $ReduceFlag Global = @s DecrementTimer
scoreboard players operation $ReduceFlag Global %= $2 Const

### 氷発生
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break master @s ^ ^64 ^ 7 2
execute if score $ReduceFlag Global matches 0 run summon minecraft:armor_stand ~ ~ ~ {Small:false,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[JavelinIce,NativeTask],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Pose:{Head:[1f,1f,1f]},Fire:1000s}
scoreboard players operation @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] SkillAttribute = @s SkillAttribute
scoreboard players operation @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] DecrementTimer = @s DecrementTimer
execute as @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] run function calc_manager:set/random_pose_head

### 氷進行
tp @s ^ ^ ^1

### 氷制限
execute unless block ~ ~1.52 ~ minecraft:air run kill @s
execute unless entity @a[distance=..32,tag=Caster,limit=1] run kill @s
execute unless entity @a[distance=..28,tag=Caster,limit=1] run tag @s add Reversed
execute if entity @a[distance=..3,limit=1] run kill @s[tag=Reversed]

###紐付け解除
tag @a[tag=Caster] remove Caster
