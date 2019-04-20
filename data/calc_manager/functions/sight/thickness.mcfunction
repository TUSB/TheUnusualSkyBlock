##############################
### 視線が通るか判定する
##############################

### Note: Limit of Distance is 153.6m. Limit of Resolution is 0.5m.

### Usage: execute as [Source] at [Destination] run function this
### Example: If you want to check the path between a player and an entity, run below.
### execute as @p at @e[tag=X,limit=1] anchored eyes positioned ^ ^ ^ anchored feet run function <this>
### Returns: $Result BlockThickness == 0 when [Source] can sight on [Destination]
###                                 >= 1 when there are more than 0.1 block between [Source] and [Destination]

### 初期化
execute facing entity @s eyes positioned as 0-0-0-1-0-0 in overworld run tp 0-0-0-1-0-0 ~ ~ ~ ~ ~
execute rotated as 0-0-1-0-0 facing ^ ^ ^-1 positioned as 0-0-1-0-1 in overworld run tp 0-0-0-1-0-1 ~ ~ ~ ~ ~
scoreboard players set $Result BlockThickness 0

### ディメンション取得
function calc_manager:dimension/get

### 判定
# overworld
execute if score $Result Dimension matches 0 in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in overworld unless block ~ ~ ~ minecraft:air run scoreboard players add $Result BlockThickness 1
# nether
execute if score $Result Dimension matches -1 in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in the_nether unless block ~ ~ ~ minecraft:air run scoreboard players add $Result BlockThickness 1
# end
execute if score $Result Dimension matches 1 in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in the_end unless block ~ ~ ~ minecraft:air run scoreboard players add $Result BlockThickness 1

### 判定ライン見たい時
# execute in overworld if entity @s[distance=0..] in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in overworld run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
# execute in the_nether if entity @s[distance=0..] in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in the_nether run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
# execute in the_end if entity @s[distance=0..] in overworld rotated as 0-0-0-1-0-0 positioned ^ ^ ^102.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^51.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^25.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^12.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^06.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^03.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^01.6 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.8 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.4 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.2 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.1 rotated as @e[x=3.0,y=3.10,z=3.0,distance=..0.011,sort=nearest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-0-1-0-0 positioned ^ ^ ^00.05 rotated as 0-0-0-1-0-0 positioned ^ ^ ^-102.4 in the_end run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
