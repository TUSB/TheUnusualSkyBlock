#自然ダメージ反映
execute store result score _ _ run data get entity @s AbsorptionAmount -1
scoreboard players add _ _ 1000000
scoreboard players operation @s Damage += _ _
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f
