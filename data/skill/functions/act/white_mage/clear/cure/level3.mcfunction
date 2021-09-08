##############################
### 状態異常回復レベル３
##############################

### 死の宣告解除
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 10
scoreboard players operation _ Calc %= _ _
execute if score _ Calc matches 0 if score @s DoomCount matches 0.. run function effects:doom/escape
### やけど解除
execute if score @s BurnCount matches 0.. run function effects:burn/cure
### 病気解除
execute if score @s VirusCount matches 0.. run function effects:virus/cure
### 混乱解除
execute if score @s ConfuseCount matches 0.. run function effects:confuse/cure
### 呪詛解除
execute if entity @s[tag=Curse] run function effects:curse/cure
### 恐怖解除
execute if score @s PalsyLevel matches 0.. run function effects:palsy/cure

function skill:act/white_mage/clear/cure/level2
