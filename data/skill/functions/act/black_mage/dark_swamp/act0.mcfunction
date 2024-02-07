
### ダークスワンプ発動

###ダークスワンプ発動
summon minecraft:armor_stand ~ ~ ~ {Tags:[DarkSwamp,CooldownRequired],PortalCooldown:0,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true}
scoreboard players operation _ TrackingID = @s OhMyDatID
###ダメージ/吸収レート
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ダークスワンプ",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ダークスワンプ",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"ダークスワンプ",Level:3}].Damage
function skill:damage/add/skill/magic
###サブルーチンコール
execute as @e[tag=DarkSwamp,tag=!Initialized,limit=1,distance=..0.01] run function skill:act/black_mage/dark_swamp/act1
