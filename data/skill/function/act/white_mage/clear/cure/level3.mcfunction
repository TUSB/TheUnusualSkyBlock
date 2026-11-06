#> skill:act/white_mage/clear/cure/level3
#
# 状態異常回復レベル３

# 死の宣告解除
execute store result score _ Calc run random value 0..9
execute if score _ Calc matches 0 if score @s DoomCount matches 1.. run function effect:doom/escape
# 火だるま解除
execute if score @s BurnCount matches 0.. run function effect:burn/cure
# 凍結解除
execute if entity @s[tag=Freeze] run function effect:freeze/cure
# 病気解除
execute if score @s VirusCount matches 0.. run function effect:virus/cure
# 混乱解除
execute if score @s ConfuseCount matches 0.. run function effect:confuse/cure
# 呪詛解除
execute if entity @s[tag=Curse] run function effect:curse/cure
# 恐怖解除
execute if score @s PalsyLevel matches 0.. run function effect:palsy/cure

function skill:act/white_mage/clear/cure/level2
