##############################
### マナリフレッシュ発動
##############################

execute if score @s SupportSkill matches 52061 run scoreboard players set $ManaRefreshValue Global 601
execute if score @s SupportSkill matches 52062 run scoreboard players set $ManaRefreshValue Global 901
execute if score @s SupportSkill matches 52063 run scoreboard players set $ManaRefreshValue Global 602

execute unless score @s SneakTime matches 1.. as @s run function skill_manager:black_mage/mana_refresh/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] run function skill_manager:black_mage/mana_refresh/apply
