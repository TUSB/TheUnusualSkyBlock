#自然ダメージ反映
execute store result score _ Damage run data get entity @s AbsorptionAmount -1
scoreboard players add _ Damage 1000000
data modify storage skill: Damage set value {Hit:1b}
function skill:damage/apply/physical
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f
#HitDamage付与
tag @s add HitDamageTaken
