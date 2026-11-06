#> entity:death/act
#
# エンティティ死亡時処理

# 敵帯電 落雷
execute if entity @s[tag=EnemyElectrification] at @s run function effect:enemy_debuff/electrification/lightning_strike
# 忍者スキル - 介錯
execute if entity @s[scores={Kaishaku=1..},tag=!KaishakuExplosion] run function skill:act/ninja/kaishaku/explode
# ワイルドクッキング
execute if entity @s[scores={WildCooking=1..}] run function skill:act/hunter/wild_cooking/cook
# ルートテーブルドロップ
execute if entity @s[tag=HasLootTable] run function entity:loot/
# バーストオーブドロップ
execute if entity @s[tag=Enemy,tag=!NonBurst] run function player:burst/orb
