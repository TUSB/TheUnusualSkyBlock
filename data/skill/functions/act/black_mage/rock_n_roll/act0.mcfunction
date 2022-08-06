
### ロックンロール発動

execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute rotated ~120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute rotated ~-120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[Skill,RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute as @e[tag=Initializing] at @s run function calc:set/random_pose_head
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ロックンロール",Level:4}].Damage
function skill:damage/add/skill/magic
execute as @e[tag=Initializing] run function skill:damage/save
scoreboard players operation @e[tag=Initializing] TrackingID = @s OhMyDatID

function makeup:skill/act/black_mage/rock_n_roll/act0

tag @e[tag=Initializing] remove Initializing

scoreboard players set @s RockNRoll 600
