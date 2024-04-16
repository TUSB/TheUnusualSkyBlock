# 代償ダメージ
execute store result score _ Calc run attribute @s minecraft:generic.max_health get 25
execute store result score _ _ run data get entity @s AbsorptionAmount 25
scoreboard players operation _ Calc += _ _

data modify storage score_damage: Argument set value {Damage:6,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"聖域を生み出すために%1$sはチリとなった","with":[{"selector":"@s"}]}]'}
execute store result storage score_damage: Argument.Damage double 0.01 run scoreboard players get _ Calc

function score_damage:api/attack