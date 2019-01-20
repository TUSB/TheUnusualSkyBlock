##############################
### ワイルドカード処理分岐
##############################

#プレイヤーのみ
execute if score @s WildCard matches -999..0 run function skill_manager:black_mage/wild_card/roll/tick
execute if score @s WildCard matches 10000000.. run function skill_manager:black_mage/wild_card/cast/mark
