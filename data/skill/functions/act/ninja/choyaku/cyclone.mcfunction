##############################
### 跳躍ダメージ
##############################

#TODO: ダメージ処理
### 10 35 100 250
#execute if score @s Choyaku matches 1..4 run scoreboard players set $Damage Global 1000
#execute if score @s Choyaku matches 5..14 run scoreboard players set $Damage Global 3500
#execute if score @s Choyaku matches 15..24 run scoreboard players set $Damage Global 10000
#execute if score @s Choyaku matches 25..35 run scoreboard players set $Damage Global 25000
#function skill_manager:damage_modifier/apply

#scoreboard players operation @e[distance=..9,tag=Mob] Damage > $Damage Global

#演出
function makeup:skill/act/ninja/choyaku/cyclone
