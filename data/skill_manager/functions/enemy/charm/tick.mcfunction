##############################
### 魅了処理
##############################

scoreboard players remove @s CharmCount 1
scoreboard players operation $Tick Global = @s CharmCount
scoreboard players operation $Tick Global %= $100 Const

execute if score $Tick Global matches 0 unless score @s CharmCount matches 0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"は周囲を",{"text":"魅了","color":"white"},"している！"]
execute if score @s CharmCount matches 0 run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"魅了","color":"white"},"が切れた。"]
execute at @a[distance=..32] run tp @a[distance=..0] ~ ~ ~ facing entity @s

tag @s[scores={CharmCount=..0}] remove TickingTask

###---演出---Start
###---演出---End
