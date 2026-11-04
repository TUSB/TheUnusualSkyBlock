#> skill:act/summoner/call_crystal_attack/attack/ice

# クリスタルIce攻撃

function makeup:skill/act/summoner/call_crystal_attack/attack/ice

function skill:act/summoner/call_crystal_attack/attack/common

data modify storage skill: damage.Ice set from storage skill: damage.Physical
data remove storage skill: damage.Physical


execute as @e[tag=Enemy,distance=..10] run function skill:damage/apply/
# デバフ付与
execute as @e[tag=Enemy,distance=..10] run function effect:enemy_debuff/freeze/apply
