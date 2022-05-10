
### ライトニングブロー攻撃

scoreboard players operation _ Damage = @s LightningBlow
function skill:damage/apply/
tag @s remove ReceivedPhysicalDamage
scoreboard players operation _ LightningBlow = _ Damage
scoreboard players reset @s LightningBlow

execute as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},limit=1] at @s run function skill:act/black_mage/lightning_blow/damage
