##############################
### サヨナラ発動
##############################

###---演出---Start
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a[distance=..48] ~ ~ ~ 4 0.5
###---演出---End

###ダメージ算出/MP補正
scoreboard players operation $Damage Global = @s MP
scoreboard players operation $Damage Global < $100 Const
scoreboard players remove @s MP 100
scoreboard players operation @s MP > $0 Const

###レイズ付与
execute if score $Damage Global matches 100 run tag @s add Raise

###ダメージ付与/最大 2500+2500+2500+1250+1250+675=10675
scoreboard players operation $Damage Global *= $Damage Global
scoreboard players operation $Damage Global *= $25 Const
execute if score $Damage Global matches 200000.. run scoreboard players operation @e[distance=..10,tag=Mob] Damage += $Damage Global
execute if score $Damage Global matches 100000.. run scoreboard players operation @e[distance=..10,tag=Mob] Damage += $Damage Global
execute if score $Damage Global matches 000000.. run scoreboard players operation @e[distance=..10,tag=Mob] Damage += $Damage Global
scoreboard players operation $Damage Global /= $2 const
execute if score $Damage Global matches 100000.. run scoreboard players operation @e[distance=..20,tag=Mob] Damage += $Damage Global
execute if score $Damage Global matches 050000.. run scoreboard players operation @e[distance=..20,tag=Mob] Damage += $Damage Global
scoreboard players operation $Damage Global /= $2 const
execute if score $Damage Global matches 050000.. run scoreboard players operation @e[distance=..30,tag=Mob] Damage += $Damage Global

###レイズ適用
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise
