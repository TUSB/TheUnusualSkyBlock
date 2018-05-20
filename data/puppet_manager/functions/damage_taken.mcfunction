##############################
### からくりダメ―ジ付与処理
##############################

###ダメージ演出
particle minecraft:damage_indicator ~ ~1.5 ~ 0.2 0.3 0.2 0 30
playsound minecraft:entity.stray.hurt neutral @a ~ ~ ~ 1 1
###ダメ―ジスコアリセット
scoreboard players reset $PuppetDamage Global
