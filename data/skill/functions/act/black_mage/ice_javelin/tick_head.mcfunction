
### アイスジャベリン先頭処理

# 演出
function makeup:skill/act/black_mage/ice_javelin/tick_head

scoreboard players operation _ _ = @s TrackingID

###紐付け
execute as @a if score @s OhMyDatID = _ _ run tag @s add Caster

### 行き帰り計算
execute if entity @s[tag=!Reversed] run function skill:act/black_mage/ice_javelin/tick_forward
execute if entity @s[tag=Reversed] run function skill:act/black_mage/ice_javelin/tick_backward

### 氷半減フラグ
execute store result score @s _ run data get entity @s PortalCooldown
scoreboard players set _ _ 2
scoreboard players operation @s _ %= _ _

### 氷発生
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break master @s ^ ^64 ^ 7 2
execute if score @s _ matches 0 run summon minecraft:armor_stand ~ ~ ~ {Small:false,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[Skill,JavelinIce,NativeTask],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Pose:{Head:[1f,1f,1f]},Fire:1000s}
function skill:damage/load
execute as @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] run function skill:damage/save
data modify entity @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin,limit=1] PortalCooldown set from entity @s PortalCooldown
execute as @e[distance=..0.01,tag=JavelinIce,tag=!IceJavelin] run function calc:set/random_pose_head

### 氷進行
tp @s ^ ^ ^2

### 氷制限
execute unless block ~ ~1.52 ~ minecraft:air run kill @s
execute unless entity @a[distance=..34,tag=Caster,limit=1] run kill @s
execute unless entity @a[distance=..28,tag=Caster,limit=1] run tag @s add Reversed
execute if entity @a[distance=..3,limit=1] run kill @s[tag=Reversed]

###紐付け解除
tag @a[tag=Caster] remove Caster
