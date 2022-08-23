
## レイズ発動

# アイテム散らばり防止
tp @e[distance=..10,type=minecraft:item,nbt={Age:0s}] ~ ~ ~
execute as @e[distance=..10,type=minecraft:item,nbt={Age:0s}] run data merge entity @s {Invulnerable:true,Age:-6000s,PickupDelay:0s,Motion:[0d,0d,0d]}

# 現在の位置保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise.Pos set from entity @s Pos
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise.Rotation set from entity @s Rotation
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise.Dimension set from entity @s Dimension

# 演出用エンティティ召喚
summon armor_stand ~ ~ ~ {Tags:[TickingRequired,NativeTask,Skill,RaisePoint],PortalCooldown:3600,Small:true,Invulnerable:true,Invisible:true}

# 描画防止用暗闇
effect give @s minecraft:blindness 1000000 127 true

#演出
function makeup:skill/act/white_mage/araise/raise
