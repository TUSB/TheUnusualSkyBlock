#> enemy:natural_villager
#
# 村人召喚処理
#
# @within function enemy:natural_spawn

# 攻略率スコアを取得して
    execute store result score @s Calc run function calc:island/clear_count_percent
    scoreboard players set @s Calc 75
    loot replace entity @s armor.head loot settings:enemy/natural_villager
    tellraw @a {"entity":"@s","nbt":"ArmorItems[3].tag.SpawnEntities"}