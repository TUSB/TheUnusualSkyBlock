##############################
### 一閃発動
##############################

###既に一閃があれば消す
scoreboard players operation $Issen ID = @s ID
execute as @e[tag=Issen] if score @s ID = $Issen ID run kill @s
###新たに一閃を発生させる
execute positioned ~ ~1.52 ~ run data merge entity @e[distance=..5,type=snowball,tag=!Initialized,limit=1] {NoGravity:true,PortalCooldown:30,Tags:[CooldownRequired,Issen,Initializing]}
execute store result score $IssenDY Global run data get entity @e[tag=Initializing,limit=1] Motion[1] 10000
execute if entity @s[nbt={OnGround:true}] if score $IssenDY Global matches ..0 run scoreboard players set $IssenDY Global 0
execute as @e[tag=Initializing,limit=1] at @s run tp @s ~ ~-1.5199 ~
execute store result entity @e[tag=Initializing,limit=1] Motion[1] double 0.0001 run scoreboard players get $IssenDY Global
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
tag @e[tag=Initialized,limit=1] remove Initialized
scoreboard players set @s Issen 30
###ラグ削減&位置固定
effect give @s minecraft:slow_falling 2 0 true
###MP消費
scoreboard players operation @s MPConsumption += @s ModeCost
###トリガー削除
scoreboard players reset @s UseSnowball
