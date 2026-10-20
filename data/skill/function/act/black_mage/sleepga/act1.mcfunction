##############################
### スリプガ
##############################

#睡眠時間 = 450/(Lv+20) + (-5～5) 秒
execute if score _ Level matches 1 run scoreboard players set @s Sleepga 450
execute if score _ Level matches 2 run scoreboard players set @s Sleepga 700
scoreboard players operation _ _ = @s Level
scoreboard players add _ _ 20
scoreboard players operation @s Sleepga /= _ _

execute store result score _ Calc run function calc:random
scoreboard players set _ _ 11
scoreboard players operation _ Calc %= _ _
scoreboard players remove _ Calc 5

scoreboard players operation @s Sleepga += _ Calc

#NoAI化
execute unless data entity @s[scores={Sleepga=1..}] NoAI run tag @s add SleepgaNoAI
data modify entity @s[tag=SleepgaNoAI] NoAI set value true

#演出
execute if entity @s[scores={Sleepga=1..}] run function makeup:skill/act/black_mage/sleepga/act1
