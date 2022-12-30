##############################
### モブ1秒処理
##############################

#10秒処理
execute if score $Seconds Count matches 0 run function enemy:ten_seconds

execute if entity @s[scores={Kaishaku=1..}] run function skill:act/ninja/kaishaku/debuff_tick
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick
execute if entity @s[scores={WildCooking=1..}] run function skill:act/hunter/wild_cooking/debuff_tick
execute if entity @s[scores={Sleepga=1..}] run function skill:act/black_mage/sleepga/tick
execute if entity @s[scores={Weakness=1..}] run function skill:act/common/weakness_paint/one_second

#ダメージ表示
execute if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/
