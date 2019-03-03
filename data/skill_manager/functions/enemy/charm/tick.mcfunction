##############################
### 魅了継続処理
##############################

scoreboard players remove @s CharmCount 1
scoreboard players operation $Tick Global = @s CharmCount
scoreboard players operation $Tick Global %= $100 Const

execute if score $Tick Global matches 99 run tellraw @a[distance=..24] [{"text":"","color":"yellow"},{"selector":"@s"},"は周囲を",{"text":"魅了","color":"white"},"している！"]
execute if score @s CharmCount matches ..0 run function skill_manager:enemy/charm/finalize

tag @s add Charming
execute as @a[distance=..24,gamemode=!creative,gamemode=!spectator] at @s positioned ^ ^ ^48 facing entity @e[tag=Charming,limit=1] eyes positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
tag @s remove Charming

###---演出---Start
particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 1 force @a[distance=..24,gamemode=!creative,gamemode=!spectator]
###---演出---End
