#> enemy:natural_villager
#
# 村人召喚処理
#
# @within function enemy:natural_spawn

# 攻略率スコアを取得して
    execute store result score @s Calc run function calc:island/clear_count_percent
    loot replace entity @s armor.head loot settings:enemy/natural_villager