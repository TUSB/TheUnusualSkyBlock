##############################
### モブ1秒処理
##############################

execute if entity @s[scores={Kaishaku=1..}] run function skill:act/ninja/kaishaku/debuff_tick
execute if entity @s[scores={WildCooking=1..}] run function skill:act/hunter/wild_cooking/debuff_tick
