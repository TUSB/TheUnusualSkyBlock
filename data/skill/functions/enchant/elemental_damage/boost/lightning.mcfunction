#ブースト%を合計
scoreboard players set _ Calc 100
data modify storage item: EnchantLevels set value []
data modify storage item: EnchantLevels append from storage item: Equipments[].tag.Enchantments[{id:"tusb:雷威"}].lvl
function skill:enchant/elemental_damage/boost/sum
#補正ダメージ = ダメージ * ブースト%
scoreboard players set _ _ 100
scoreboard players operation _ ElementLightning *= _ Calc
scoreboard players operation _ ElementLightning /= _ _
