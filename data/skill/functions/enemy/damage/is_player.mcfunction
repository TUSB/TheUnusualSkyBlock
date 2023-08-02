##プレイヤーかどうかで分岐
execute if entity @s[type=player] run function skill:enemy/damage/can_be_blocked
execute unless entity @s[type=player] run function skill:enemy/damage/friendly