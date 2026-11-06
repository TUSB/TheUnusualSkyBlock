#> skill:act/hunter/flare_bomb/act0
#
# 照明弾発動

# 暗視付与
effect give @a[distance=..32] minecraft:night_vision 180 127

# 敵に発光付与
execute if score _ Level matches 1 run effect give @e[distance=..16,tag=Enemy] minecraft:glowing 30 127
execute if score _ Level matches 2 run effect give @e[distance=..32,tag=Enemy] minecraft:glowing 30 127

# デバフ付与
execute if score _ Level matches 1 as @e[distance=..3,tag=Enemy] at @s run function effect:enemy_debuff/fear/apply
execute if score _ Level matches 2 as @e[distance=..6,tag=Enemy] at @s run function effect:enemy_debuff/fear/apply

# 演出
function makeup:skill/act/hunter/flare_bomb/act0
