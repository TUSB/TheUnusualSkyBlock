#Function
## 初期設定
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraAI] unless entity @s[scores={ParentID=1..}] run scoreboard players operation @s ParentID = _ _
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense set value 0
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageAttack set value 0
scoreboard players set @s HPMax 10000
scoreboard players operation @s HP = @s HPMax
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Defense int 1 run scoreboard players get @s Defense
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SpecialDefense int 1 run scoreboard players get @s SpecialDefense
