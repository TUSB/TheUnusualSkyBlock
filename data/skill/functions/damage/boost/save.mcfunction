#> skill:damage/boost/save
# @private

# 火属性保存
    data modify storage calc: List set value []
    data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:炎威"}].lvl
    execute store result score _ Calc run function calc:list/sum/x1
    scoreboard players set _ _ 10
    scoreboard players operation _ Calc *= _ _
    scoreboard players operation @s ElementFire = _ Calc

# 氷属性保存
    data modify storage calc: List set value []
    data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:氷威"}].lvl
    execute store result score _ Calc run function calc:list/sum/x1
    scoreboard players set _ _ 10
    scoreboard players operation _ Calc *= _ _
    scoreboard players operation @s ElementIce = _ Calc

# 雷属性保存
    data modify storage calc: List set value []
    data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:雷威"}].lvl
    execute store result score _ Calc run function calc:list/sum/x1
    scoreboard players set _ _ 10
    scoreboard players operation _ Calc *= _ _
    scoreboard players operation @s ElementLightning = _ Calc

# 光属性保存
    data modify storage calc: List set value []
    data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:光威"}].lvl
    execute store result score _ Calc run function calc:list/sum/x1
    scoreboard players set _ _ 10
    scoreboard players operation _ Calc *= _ _
    scoreboard players operation @s ElementLight = _ Calc

# 闇属性保存
    data modify storage calc: List set value []
    data modify storage calc: List append from storage item: Equipments[].tag.Enchantments[{id:"tusb:光威"}].lvl
    execute store result score _ Calc run function calc:list/sum/x1
    scoreboard players set _ _ 10
    scoreboard players operation _ Calc *= _ _
    scoreboard players operation @s ElementDark = _ Calc