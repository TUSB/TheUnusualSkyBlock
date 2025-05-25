#> entity:damage/add/physical/projectile
### 投射物の物理ダメージを計算・付与
#Add
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage",operation:"add_value"}].amount
execute store result score _ Damage run function calc:list/sum/x1
#Increase
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage",operation:"add_multiplied_base"}].amount
execute store result score _ Calc run function calc:list/sum/x100
scoreboard players add _ Calc 100
#More
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage",operation:"add_multiplied_total"}].amount
execute store result score _ _ run function calc:list/product/x100
scoreboard players add _ _ 100
#合計
scoreboard players operation _ Damage *= _ _
scoreboard players set _ _ 100
scoreboard players operation _ Damage /= _ _
scoreboard players operation _ Damage *= _ Calc
execute store result storage entity: damage.physical int 1 run scoreboard players operation _ Damage /= _ _
