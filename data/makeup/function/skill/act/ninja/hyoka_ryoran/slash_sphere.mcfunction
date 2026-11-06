#> makeup:skill/act/ninja/hyoka_ryoran/advance_notice
#
# 氷華繚乱 外側の球演出

# 中央の行で行われている繰り返し数に応じて密度が高くなる
execute as @e[tag=Center,limit=1] at @s rotated as @e[tag=Axis,limit=2] rotated ~90 0 positioned ^ ^ ^1 \
  rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
  rotated as @e[tag=Axis,limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s run function makeup:skill/act/ninja/hyoka_ryoran/slash_sphere1
