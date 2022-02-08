##############################
### ワイルドクッキング発動
##############################

#焚き火召喚
summon snowball ^ ^ ^ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10001}},Passengers:[{id:"minecraft:falling_block",Tags:[Skill,NativeTask,WildCooking],Glowing:1b,BlockState:{Name:"minecraft:campfire"},NoGravity:1b,Time:-600,DropItem:0b}]}
scoreboard players operation @e[tag=WildCooking,tag=!Initialized,distance=0,limit=1] Level = _ Level
#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドクッキング",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドクッキング",Level:2}].Damage
function skill:damage/add/skill/magic
execute as @e[tag=WildCooking,tag=!Initialized,distance=0] run function skill:damage/save
#演出
function makeup:skill/act/hunter/wild_cooking/act1
