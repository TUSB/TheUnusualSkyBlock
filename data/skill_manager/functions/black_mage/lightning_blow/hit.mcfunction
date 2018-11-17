##############################
### ライトニングブロー攻撃
##############################

scoreboard players operation $Damage Global = @s LightningBlow
function calc_manager:apply_damage_modifier
scoreboard players reset @s LightningBlow

execute as @e[distance=..6,tag=Mob,scores={DecrementTimer=10},limit=1,sort=nearest] at @s run function skill_manager:black_mage/lightning_blow/damage
