#ブースト% = Level * 10%
data modify storage calc: List set value []
data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:氷威"}].lvl
execute store result score _ Calc run function calc:list/sum/x1
scoreboard players set _ _ 10
scoreboard players operation _ Calc *= _ _
scoreboard players add _ Calc 100
#補正ダメージ = ダメージ * ブースト%
scoreboard players set _ _ 100
scoreboard players operation _ ElementCold *= _ Calc
scoreboard players operation _ ElementCold /= _ _
