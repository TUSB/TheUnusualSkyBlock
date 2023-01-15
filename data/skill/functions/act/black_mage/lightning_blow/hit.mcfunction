
### ライトニングブロー攻撃

#雷ダメージを追加する
scoreboard players operation _ ElementLightning = @s LightningBlow
scoreboard players reset @s LightningBlow

execute as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},limit=1] at @s run function skill:act/black_mage/lightning_blow/damage
