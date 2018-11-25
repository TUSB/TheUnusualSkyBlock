##############################
### ライトニングブロー攻撃
##############################

scoreboard players operation $Damage Global = @s LightningBlow
function skill_manager:damage_modifier/apply
scoreboard players reset @s LightningBlow

function calc_manager:target/melee/catch
execute as @e[tag=MeleeTarget,limit=1] at @s run function skill_manager:black_mage/lightning_blow/damage
function calc_manager:target/melee/release
