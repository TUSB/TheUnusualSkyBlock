
### アイスジャベリン発動

summon minecraft:armor_stand ^ ^ ^ {NoGravity:true,Marker:true,Invisible:true,Tags:[IceJavelin,JavelinIce,NativeTask],PortalCooldown:100}
scoreboard players operation @e[distance=..0.01,tag=IceJavelin] TrackingID = @s OhMyDatID

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"アイスジャベリン",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"アイスジャベリン",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"アイスジャベリン",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"アイスジャベリン",Level:4}].Damage
function skill:damage/add/skill/magic
execute as @e[distance=..0.01,tag=IceJavelin] run function skill:damage/save

tp @e[distance=..0.01,tag=IceJavelin] ^ ^ ^1 ~ ~
