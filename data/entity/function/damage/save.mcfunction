#> entity:damage/save
# 数値データのみを保存する。割合設定は保存されない
# 100倍して保存
execute store result score @s Attack run data get storage entity: damage.physical 100
execute store result score @s MagicAttack run data get storage entity: damage.magic 100
execute store result score @s UnreasonableAttack run data get storage entity: damage.unreasonable 100
execute if data storage entity: damage{hit:1b} run tag @s add HitDamage
