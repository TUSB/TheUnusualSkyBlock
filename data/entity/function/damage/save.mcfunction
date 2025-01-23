#> entity:damage/save
# 100倍して保存
execute store result score @s Attack run data get storage entity: damage.physical
execute store result score @s MagicAttack run data get storage entity: damage.magic
execute store result score @s UnreasonableAttack run data get storage entity: damage.unreasonable
execute if data storage entity: damage{hit:1b} run tag @s add HitDamage
