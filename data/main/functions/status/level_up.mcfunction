##############################
### レベルアップ
##############################

scoreboard players operation $PreviousLevel Global = @s Level

function main:status/level_up_loop

execute if score @s Level matches 101.. run scoreboard players operation @s Exp = @s RequiredExp
execute if score @s Level matches 101.. run scoreboard players remove @s Exp 1
execute if score @s Level matches 101.. run scoreboard players set @s Level 100

###---演出---Start
execute if score $PreviousLevel Global matches ..99 run stopsound @a[distance=..16] master minecraft:ui.toast.challenge_complete
execute if score $PreviousLevel Global matches ..99 run playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 2 2
execute if score $PreviousLevel Global matches 100.. run stopsound @a[distance=..16] master minecraft:ui.toast.in
execute if score $PreviousLevel Global matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
execute if score $PreviousLevel Global matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
execute if score $PreviousLevel Global matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End

scoreboard players operation $PreviousCP Global = $PreviousLevel Global
scoreboard players remove $PreviousCP Global 50
scoreboard players operation $PreviousCP Global > $0 Const

scoreboard players operation $CurrentCP Global = @s Level
scoreboard players remove $CurrentCP Global 50
scoreboard players operation $CurrentCP Global > $0 Const

scoreboard players operation $CurrentLevel Global = @s Level
scoreboard players operation $CurrentLevel Global < $50 Const

scoreboard players operation $PreviousLevel Global < $50 Const

execute if score $CurrentLevel Global matches ..49 run tellraw @a ["",{"selector":"@s"}," はレベルアップした！！ LV: ",{"score":{"name":"$PreviousLevel","objective":"Global"},"color":"green"}," → ",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}]
execute if score $CurrentLevel Global matches 50.. if score $PreviousCP Global matches ..49 run tellraw @a ["",{"selector":"@s"}," はレベルアップした！！ LV: ",{"score":{"name":"$PreviousLevel","objective":"Global"},"color":"green"}," → ",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," CP: ",{"score":{"name":"$PreviousCP","objective":"Global"},"color":"green"}," → ",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}]
execute if score $CurrentCP Global matches 50.. run tellraw @a ["",{"selector":"@s"}," のレベルはこれ以上あがらない。"]

execute if score @s Job matches 1 run scoreboard players operation @s LevelKnight > @s Level
execute if score @s Job matches 2 run scoreboard players operation @s LevelNinja > @s Level
execute if score @s Job matches 3 run scoreboard players operation @s LevelHunter > @s Level
execute if score @s Job matches 4 run scoreboard players operation @s LevelWhiteMage > @s Level
execute if score @s Job matches 5 run scoreboard players operation @s LevelBlackMage > @s Level
execute if score @s Job matches 6 run scoreboard players operation @s LevelSummoner > @s Level
execute if score @s Job matches 7 run scoreboard players operation @s LevelPupMaster > @s Level

function effect_manager:status/lift_to_max
