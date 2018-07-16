##############################
### サヨナラ発動
##############################

###---演出---Start
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a[distance=..48] ~ ~ ~ 4 0.5
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

###ダメージ付与/最大 3000 * 3 + 3000 * 2 + 3000 = 18000
scoreboard players operation $Damage Global *= $Damage Global
scoreboard players operation $Damage Global *= $30 Const
execute if score $Distance Global matches 60.. run scoreboard players operation @e[distance=..7,tag=Mob] Damage += $Damage Global
execute if score $Distance Global matches 30.. run scoreboard players operation @e[distance=..7,tag=Mob] Damage += $Damage Global
execute if score $Distance Global matches 00.. run scoreboard players operation @e[distance=..7,tag=Mob] Damage += $Damage Global
scoreboard players operation $Distance Global /= $2 const
execute if score $Distance Global matches 35.. run scoreboard players operation @e[distance=..14,tag=Mob] Damage += $Damage Global
execute if score $Distance Global matches 20.. run scoreboard players operation @e[distance=..14,tag=Mob] Damage += $Damage Global
scoreboard players operation $Distance Global /= $2 const
execute if score $Distance Global matches 20.. run scoreboard players operation @e[distance=..21,tag=Mob] Damage += $Damage Global

###レイズ適用
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise
