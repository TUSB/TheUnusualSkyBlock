##############################
### 介錯サヨナラ処理２
##############################

###---演出---Start
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5
###---演出---End
###爆発ダメージ付与 MobHPMax / 10 ダメージ ジッサイツヨイ
scoreboard players operation $Damage Global = @s MobHPMax
scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global
