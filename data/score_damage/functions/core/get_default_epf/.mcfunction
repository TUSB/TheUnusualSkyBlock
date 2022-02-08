#> score_damage:core/get_default_epf/
#
# Enchantment Protection Factor (通称EPF)を取得します
#
# @within function score_damage:core/get_status

#> Temp
# @within score_damage:core/get_default_epf/**
    #declare score_holder $Temp

# 負荷軽減のためstorageに入れる
    data modify storage score_damage: Protection set value []
    execute if entity @s[type=player] run function score_damage:core/get_default_epf/from_player
    execute if entity @s[type=!player] run data modify storage score_damage: Protection append from entity @s ArmorItems[].tag.Enchantments
# 明示的に0に設定
    scoreboard players set $EPF ScoreDamageCore 0
# 各種エンチャントの加算
    execute if data storage score_damage: Argument{DamageType:[Global]} run function score_damage:core/get_default_epf/enchant/global
    execute if data storage score_damage: Argument{DamageType:[Fire]} run function score_damage:core/get_default_epf/enchant/fire
    execute if data storage score_damage: Argument{DamageType:[Blast]} run function score_damage:core/get_default_epf/enchant/blast
    execute if data storage score_damage: Argument{DamageType:[Projectile]} run function score_damage:core/get_default_epf/enchant/projectile
    execute if data storage score_damage: Argument{DamageType:[Fall]} run function score_damage:core/get_default_epf/enchant/fall
# リセット
    scoreboard players reset $Temp ScoreDamageCore
    data remove storage score_damage: Protection