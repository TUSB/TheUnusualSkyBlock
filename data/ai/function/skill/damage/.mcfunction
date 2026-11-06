#> ai:skill/damage/
#MPの吸収量を初期化
scoreboard players set _ MPMax 0

#ダメージを初期化
data modify storage entity: damage set from storage mob_data: Call.Damage
execute if data storage mob_data: Call.MobScale run function ai:skill/damage/mob_scale
data modify storage mob_data: Call.Mob set from storage entity: damage

# 対象へダメージ
execute if data storage mob_data: Call.Damage run function ai:skill/damage/target_select.macro with storage mob_data: Call

# 爆発
execute if data storage mob_data: Call.Explosion run function ai:skill/damage/explosion

#MPを吸収
scoreboard players operation @s MP += _ MPMax
scoreboard players operation @s MP < @s MPMax
