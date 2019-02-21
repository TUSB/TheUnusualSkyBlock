##############################
### 羊毛 & 銀羊裘 & 金羊裘 & 幻の羊毛召喚 - Tool  
##############################

function calc_manager:set_random
scoreboard players operation @s Global %= $800 Const

# ランダムパターン1 - 羊毛 
execute if score @s Global matches 0..795 run function enemy_manager:summon/global/neutrality/01_woolscaffold_30

# ランダムパターン2 - 銀羊裘 
execute if score @s Global matches 796..797 run function enemy_manager:summon/global/neutrality/02_woolscaffold_30

#ランダムパターン3 - 金羊裘 
execute if score @s Global matches 798..799 run function enemy_manager:summon/global/neutrality/03_woolscaffold_30

#ランダムパターン4 - 幻の羊毛 
execute if score @s Global matches 800 run function enemy_manager:summon/global/neutrality/04_woolscaffold_30
