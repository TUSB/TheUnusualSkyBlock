##############################
### サモンＢ：エンダーチェスト対象チェック
##############################

execute if score @s ModeSkill matches 61101 run scoreboard players set $TimeBonus Global 1
execute if score @s ModeSkill matches 61102 run scoreboard players set $TimeBonus Global 2

execute unless score @s SneakTime matches 1.. run function skill_manager:summoner/summon_ender_chest/act
execute if score @s SneakTime matches 1.. as @a[distance=0..] at @s run function skill_manager:summoner/summon_ender_chest/act
