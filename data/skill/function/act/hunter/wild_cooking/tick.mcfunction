#> skill:act/hunter/wild_cooking/tick
#
# ワイルドクッキングtick

# ダメージ・デバフ
function skill:damage/load
execute as @e[tag=Enemy,distance=..1.5] run function skill:damage/apply/
execute as @e[tag=Enemy,distance=..1.5] run function effect:enemy_debuff/burn/apply

# デバフを5秒付与 Lv2のときは+100で区別
execute if score @s Level matches 1 run scoreboard players set @e[tag=Enemy,distance=..32] WildCooking 5
execute if score @s Level matches 2 run scoreboard players set @e[tag=Enemy,distance=..32] WildCooking 105

# 水中でkill
execute if predicate entity:is_in_all_water run kill @s

# 時間経過でkill
scoreboard players remove @s WildCooking 1
kill @s[scores={WildCooking=..0}]

# 演出
execute if score $Tick Count matches 0 run function makeup:skill/act/hunter/wild_cooking/tick
