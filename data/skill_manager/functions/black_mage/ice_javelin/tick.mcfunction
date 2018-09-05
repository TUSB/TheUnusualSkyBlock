##############################
### アイスジャベリン処理
##############################

execute if entity @s[tag=!Reversed] run function skill_manager:black_mage/ice_javelin/tick_forward
execute if entity @s[tag=Reversed] run function skill_manager:black_mage/ice_javelin/tick_backward




