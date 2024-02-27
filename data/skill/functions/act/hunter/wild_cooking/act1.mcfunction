##############################
### ワイルドクッキング発動
##############################

#焚き火召喚
summon snowball ^ ^ ^ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10001}},Passengers:[{id:"minecraft:block_display",Tags:[Skill,NativeTask,WildCooking],Glowing:1b,block_state:{Name:"minecraft:campfire"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f]}}]}
scoreboard players operation @e[tag=WildCooking,tag=!Initialized,distance=..0.01,limit=1] Level = _ Level
scoreboard players set @e[tag=WildCooking,tag=!Initialized,distance=..0.01,limit=1] WildCooking 1200
#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドクッキング",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドクッキング",Level:2}].Damage
function skill:damage/add/skill/magic
execute as @e[tag=WildCooking,tag=!Initialized,distance=..0.01] run function skill:damage/save
#演出
function makeup:skill/act/hunter/wild_cooking/act1
