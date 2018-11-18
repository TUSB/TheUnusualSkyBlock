##############################
### サヨナラ発動
##############################

###---演出---Start
particle minecraft:item minecraft:redstone_block ~ ~1 ~ 0 0 0 0.5 100 force
particle minecraft:item minecraft:nether_wart ~ ~1 ~ 0 0 0 0.5 200 force
###---演出---End

###ダメージ算出/距離算出/MP補正
scoreboard players operation $Damage Global = @s MP
scoreboard players operation $Damage Global < $100 Const
scoreboard players operation $Distance Global = @s MP
scoreboard players remove @s MP 100
scoreboard players operation @s MP > $0 Const

###レイズ付与
execute if score $Damage Global matches 100 run tag @s add Raise

###絡繰オーラ時補正
execute if score @s ModeSkill matches 21062 run scoreboard players operation $Distance Global *= $2 Const

###ダメージ付与/最大 2000 4000 6000 8000 10000
scoreboard players operation $Damage Global *= $Damage Global
scoreboard players operation $Damage Global *= $20 Const

scoreboard players operation $ApplyDamage Global = $Damage Global
execute if score $Distance Global matches 00.. run scoreboard players operation @e[distance=0..4,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 20.. run scoreboard players operation @e[distance=4..8,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 40.. run scoreboard players operation @e[distance=8..12,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 60.. run scoreboard players operation @e[distance=12..16,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 80.. run scoreboard players operation @e[distance=16..20,tag=Mob] Damage > $ApplyDamage Global

scoreboard players operation $ApplyDamage Global += $Damage Global
execute if score $Distance Global matches 20.. run scoreboard players operation @e[distance=0..4,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 40.. run scoreboard players operation @e[distance=4..8,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 60.. run scoreboard players operation @e[distance=8..12,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 80.. run scoreboard players operation @e[distance=12..16,tag=Mob] Damage > $ApplyDamage Global

scoreboard players operation $ApplyDamage Global += $Damage Global
execute if score $Distance Global matches 40.. run scoreboard players operation @e[distance=0..4,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 60.. run scoreboard players operation @e[distance=4..8,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 80.. run scoreboard players operation @e[distance=8..12,tag=Mob] Damage > $ApplyDamage Global

scoreboard players operation $ApplyDamage Global += $Damage Global
execute if score $Distance Global matches 60.. run scoreboard players operation @e[distance=0..4,tag=Mob] Damage > $ApplyDamage Global
execute if score $Distance Global matches 80.. run scoreboard players operation @e[distance=4..8,tag=Mob] Damage > $ApplyDamage Global

scoreboard players operation $ApplyDamage Global += $Damage Global
execute if score $Distance Global matches 80.. run scoreboard players operation @e[distance=0..4,tag=Mob] Damage > $ApplyDamage Global

###レイズ適用
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise
