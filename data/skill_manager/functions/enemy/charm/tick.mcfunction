##############################
### 魅了継続処理
##############################

scoreboard players remove @s CharmCount 1
scoreboard players operation $Tick Global = @s CharmCount
scoreboard players operation $Tick Global %= $100 Const

execute if score $Tick Global matches 99 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"は周囲を",{"text":"魅了","color":"white"},"している！"]
execute if score @s CharmCount matches ..0 run function skill_manager:enemy/charm/finalize

execute as @a[distance=..24,gamemode=!creative,gamemode=!spectator] facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

###---演出---Start
###---演出---End
