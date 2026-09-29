#> skill:act/black_mage/rock_n_roll/act0
#
# ロックンロール発動

# アマスタを召喚
execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:400,ArmorItems:[{},{},{},{id:"minecraft:granite",count:1b}],Fire:2000s}
execute rotated ~120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:400,ArmorItems:[{},{},{},{id:"minecraft:granite",count:1b}],Fire:2000s}
execute rotated ~-120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:400,ArmorItems:[{},{},{},{id:"minecraft:granite",count:1b}],Fire:2000s}
execute as @e[tag=Initializing] at @s run function calc:set/random_pose_head

# ダメージを取得、セーブ
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:4}].Damage
execute as @e[tag=Initializing] run function skill:damage/save

# 演出
function makeup:skill/act/black_mage/rock_n_roll/act0

scoreboard players operation @e[tag=Initializing] TrackingID = @s OhMyDatID
tag @e[tag=Initializing] remove Initializing

scoreboard players set @s RockNRoll 400
