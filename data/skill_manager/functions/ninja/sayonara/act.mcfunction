##############################
### サヨナラ発動
##############################

###---演出---Start
particle minecraft:item minecraft:redstone_block ~ ~1 ~ 0 0 0 0.5 100 force @a[tag=ShowParticles]
particle minecraft:item minecraft:nether_wart ~ ~1 ~ 0 0 0 0.5 200 force @a[tag=ShowParticles]
###---演出---End

###レイズ付与
execute if score @s MP matches 100.. run tag @s add Raise

###ダメージ算出/距離算出/MP補正
scoreboard players operation $Damage Global = @s MP
scoreboard players operation $Damage Global < $100 Const
scoreboard players operation $Distance Global = @s MP
scoreboard players operation @s MPConsumption = @s MP
scoreboard players operation @s MPConsumption < $100 Const

scoreboard players operation $Damage Global *= $25 Cosnt
execute if score @s ModeSkill matches 21062 run scoreboard players operation $Damage Global *= $3 Const
execute if score @s ModeSkill matches 21062 run scoreboard players operation $Damage Global /= $2 Const

### ダメージ付与
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
