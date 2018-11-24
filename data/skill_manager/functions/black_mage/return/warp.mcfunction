##############################
### ルーラ ワープ
##############################

summon minecraft:arrow ~ ~ ~ {Tags:[HomePoint],xTile:0,yTile:0,zTile:0}

#初期設定
execute unless score @s HomeX <= $IntMax Const run scoreboard players set @s HomeX -77
execute unless score @s HomeY <= $IntMax Const run scoreboard players set @s HomeY 23
execute unless score @s HomeZ <= $IntMax Const run scoreboard players set @s HomeZ -601
#Pos代入
scoreboard players operation $HomeX Global = @s HomeX
scoreboard players operation $HomeY Global = @s HomeY
scoreboard players operation $HomeZ Global = @s HomeZ
execute store result entity @e[tag=HomePoint,limit=1] Pos[0] double 1 run scoreboard players get $HomeX Global
execute store result entity @e[tag=HomePoint,limit=1] Pos[1] double 1 run scoreboard players get $HomeY Global
execute store result entity @e[tag=HomePoint,limit=1] Pos[2] double 1 run scoreboard players get $HomeZ Global
#Tile代入
scoreboard players operation $HomeX Global /= $16 Const
scoreboard players operation $HomeY Global /= $16 Const
scoreboard players operation $HomeZ Global /= $16 Const
execute store result entity @e[tag=HomePoint,limit=1] xTile int 1 run scoreboard players get $HomeX Global
execute store result entity @e[tag=HomePoint,limit=1] yTile int 1 run scoreboard players get $HomeY Global
execute store result entity @e[tag=HomePoint,limit=1] zTile int 1 run scoreboard players get $HomeZ Global

tp @s @e[tag=HomePoint,limit=1]
kill @e[tag=HomePoint,limit=1]
execute in overworld positioned as @s run tp @s ~ ~ ~

###---演出---Start
execute in overworld positioned as @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1
execute in overworld positioned as @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0
execute in overworld positioned as @s run particle minecraft:firework ~ ~6 ~ 0.2 5 0.2 0 50 force
###---演出---End
