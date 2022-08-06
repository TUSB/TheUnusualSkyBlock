
### クリスタルIce攻撃

function makeup:skill/act/summoner/call_crystal_attack/attack/ice

function skill:act/summoner/call_crystal_attack/attack/common

data modify storage skill: Damage.Ice set from storage skill: Damage.Physical
data remove storage skill: Damage.Physical
function skill:damage/add/skill/magic

execute as @e[tag=Enemy,distance=..10] run function skill:damage/apply/
