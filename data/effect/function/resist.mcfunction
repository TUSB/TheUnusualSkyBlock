#> effect:resist
### 異常状態耐性発動

execute store result score @s ResistEffects run data get entity @s AbsorptionAmount
$scoreboard players set _ ResistEffects $(value)
scoreboard players operation _ ResistEffects < @s ResistEffects

data modify storage entity: damage set value {unreasonable:0}
execute store result storage entity: damage.unreasonable int 1 run scoreboard players get _ ResistEffects

function entity:damage/apply/unreasonable
# １未満の緩衝体力の時はエフェクト解除
execute if score _ ResistEffects matches 0 run effect clear @s absorption

return 1
