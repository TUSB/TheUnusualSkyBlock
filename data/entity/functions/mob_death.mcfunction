##############################
### エンティティ死亡時処理
##############################

tag @s add Garbage

# 忍者スキル - 介錯
execute at @s if entity @a[distance=..10,scores={Kaishaku=1..}] if entity @s[tag=!KaishakuExplosion] run function skill:act/ninja/kaishaku/explode
