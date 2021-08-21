##############################
### ディア発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ディア",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ディア",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ディア",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ディア",Level:4}].Damage
function skill:damage/add/skill/magic
#雪玉を召喚
execute anchored eyes run summon snowball ^ ^ ^0.5 {Tags:[Skill,Dia,NativeTask],NoGravity:1b}
execute as @e[tag=Dia,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/
#ダメージと装備を保存
execute as @e[tag=Dia,tag=!Initialized,distance=..3] run function player:trigger/projectile/save
#Ownerを設定
data modify entity @e[tag=Dia,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#演出
function makeup:skill/act/white_mage/dia/act0
