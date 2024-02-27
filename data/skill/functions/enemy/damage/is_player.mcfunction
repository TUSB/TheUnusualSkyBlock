##プレイヤーかどうかで分岐
# プレイヤーは生存している必要がある。
execute if entity @s[type=player,nbt=!{Health:0.0f}] run function skill:enemy/damage/can_be_blocked
execute unless entity @s[type=player] run function skill:enemy/damage/friendly