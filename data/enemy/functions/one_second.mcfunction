##############################
### モブ1秒処理
##############################

execute if entity @s[scores={Kaishaku=1..}] run function skill:act/ninja/kaishaku/debuff_tick
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick
execute if entity @s[scores={WildCooking=1..}] run function skill:act/hunter/wild_cooking/debuff_tick
execute if entity @s[scores={Sleepga=1..}] run function skill:act/black_mage/sleepga/tick
