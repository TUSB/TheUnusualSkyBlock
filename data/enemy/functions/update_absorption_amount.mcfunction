#自然ダメージ反映
execute store result score _ Damage run data get entity @s AbsorptionAmount -1
scoreboard players add _ Damage 1000000
function skill:damage/apply/physical
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f
