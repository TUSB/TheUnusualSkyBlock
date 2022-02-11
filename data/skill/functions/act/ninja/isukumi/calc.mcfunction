
### 居縮範囲内か計算

#execute as @s at スキルを使用したプレイヤー run function calc:get/angle
function calc:get/angle/1

#Mob Rotation - 0-0-0-0-1 Rotation
#Rotation[0] = @s _  Rotation[1] _ Calc
execute store result score _ Calc run data get storage calc: Rotation.1[1] 1000
execute store result score _ _ run data get entity 0-0-0-0-1 Rotation[1] 1000
scoreboard players operation _ Calc -= _ _

scoreboard players set _ _ 360000
execute if score _ Calc matches ..1 run scoreboard players operation _ Calc %= _ _

execute store result score @s _ run data get storage calc: Rotation.1[0] 1000
execute store result score _ _ run data get entity 0-0-0-0-1 Rotation[0] 1000
scoreboard players operation @s _ -= _ _

execute if score @s _ matches -45000..45000 if score _ Calc matches -45000..45000 at @s run function skill:act/ninja/isukumi/apply
