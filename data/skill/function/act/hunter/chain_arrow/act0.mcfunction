#> skill:act/hunter/chain_arrow/act0
#
# チェインアロー発動

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:4}].Damage

# 適用
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill:act/hunter/chain_arrow/act1

# 演出
function makeup:skill/act/hunter/chain_arrow/act0
