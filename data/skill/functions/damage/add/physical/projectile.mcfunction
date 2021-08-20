### 投射物の物理ダメージを計算・付与
#Add
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Operation:0}].Amount
execute store result score _ Damage run function calc:list/sum/x1
#Increase
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Operation:1}].Amount
execute store result score _ Calc run function calc:list/sum/x100
scoreboard players add _ Calc 100
#More
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Operation:2}].Amount
execute store result score _ _ run function calc:list/product/x100
scoreboard players add _ _ 100
#合計
scoreboard players operation _ Damage *= _ _
scoreboard players set _ _ 100
scoreboard players operation _ Damage /= _ _
scoreboard players operation _ Damage *= _ Calc
scoreboard players operation _ Damage /= _ _
