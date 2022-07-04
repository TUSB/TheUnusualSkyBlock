
### ワイルドヒーリング発動

scoreboard players operation @s LastFoodLevel *= _ Level

execute if score _ Level matches 2 run function skill:act/white_mage/clear/cure/level2
execute if score _ Level matches 3 run function skill:act/white_mage/clear/cure/level3

scoreboard players operation @s HealthHealing += @s LastFoodLevel

function makeup:skill/act/hunter/wild_healing/eat
