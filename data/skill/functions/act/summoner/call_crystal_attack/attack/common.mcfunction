
### クリスタル攻撃共通

execute if score @s Level matches 101 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"コールCマジック",Level:1}].Damage
execute if score @s Level matches 102 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"コールCマジック",Level:2}].Damage
execute if score @s Level matches 103 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"コールCマジック",Level:3}].Damage

tag @s remove Particle

function makeup:skill/act/summoner/call_crystal_attack/attack/common
