#> effect:freeze/apply0
### 凍結

# 効果中なら中断
execute if entity @s[tag=Freeze] run return fail

tag @s[nbt={Fire:-20s}] add Freeze
tag @s[scores={BurnCount=0..}] remove Freeze

execute if entity @s[tag=Freeze] run function effect:freeze/apply1
