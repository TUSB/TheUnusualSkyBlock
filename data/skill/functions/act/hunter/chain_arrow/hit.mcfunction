##############################
### チェインアローヒット
##############################

#自身を除く周囲の敵にダメージ
function skill:damage/load
#チェイン
execute if entity @s[scores={Level=1}] as @e[distance=..6,tag=Enemy,nbt={AbsorptionAmount:1000000f}] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=2}] as @e[distance=..9,tag=Enemy,nbt={AbsorptionAmount:1000000f}] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=3}] as @e[distance=..12,tag=Enemy,nbt={AbsorptionAmount:1000000f}] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=4}] as @e[distance=..15,tag=Enemy,nbt={AbsorptionAmount:1000000f}] at @s run function skill:act/hunter/chain_arrow/chain
