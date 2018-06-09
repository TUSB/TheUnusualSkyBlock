##############################
### 介錯サヨナラ処理２
##############################

###爆発演出
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5
###爆発ダメージ付与
scoreboard players operation $Damage Global = @s MobHPMax
#scoreboard players operation $Damage Global *= $5 Const
scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global
