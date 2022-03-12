##############################
### エンティティ死亡時処理
##############################

tag @s add Garbage

# 忍者スキル - 介錯
execute if entity @s[scores={Kaishaku=1..},tag=!KaishakuExplosion] run function skill:act/ninja/kaishaku/explode
# ワイルドクッキング
execute if entity @s[scores={WildCooking=1..}] run function skill:act/hunter/wild_cooking/cook
# ルートテーブルドロップ
execute if entity @s[tag=HasLootTable] run function entity:loot/
