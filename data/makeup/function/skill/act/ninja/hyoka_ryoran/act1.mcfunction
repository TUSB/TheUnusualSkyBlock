#> makeup:skill/act/ninja/hyoka_ryoran/act2
#
# 氷華繚乱 炸裂
playsound item.trident.thunder player @a ~ ~ ~ 0.5 1.89
playsound block.glass.break player @a ~ ~ ~ 1 2
playsound block.glass.break player @a ~ ~ ~ 1 1.75
playsound block.glass.break player @a ~ ~ ~ 1 1.50
playsound block.glass.break player @a ~ ~ ~ 1 1.25
playsound block.glass.break player @a ~ ~ ~ 1 1
playsound entity.breeze.wind_burst player @a ~ ~ ~ 1 1
particle minecraft:cherry_leaves ~ ~ ~ 4 4 4 1 25 force
particle minecraft:item{item:{id:packed_ice}} ~ ~ ~ 4 4 4 1 100 force
particle minecraft:sweep_attack ~ ~ ~ 4 4 4 1 50 force

# 外側の球
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Skill","Sub","Axis"]}
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Skill","Center","Axis"]}
rotate @n[tag=Sub] ~90 90
rotate @n[tag=Center] ~-90 -90
function makeup:skill/act/ninja/hyoka_ryoran/slash_sphere

rotate @n[tag=Sub] ~30 90
rotate @n[tag=Center] ~-150 -90
function makeup:skill/act/ninja/hyoka_ryoran/slash_sphere

rotate @n[tag=Sub] ~150 90
rotate @n[tag=Center] ~-30 -90
function makeup:skill/act/ninja/hyoka_ryoran/slash_sphere
kill @e[tag=Axis]

# 中央の花
rotate @s ~0 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower

rotate @s ~60 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower

rotate @s ~120 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower

rotate @s ~180 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower

rotate @s ~-120 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower

rotate @s ~-60 0
execute at @s positioned ^ ^ ^8 facing entity @s feet run function makeup:skill/act/ninja/hyoka_ryoran/slash_flower
