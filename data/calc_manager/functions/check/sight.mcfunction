##############################
### 視線が通るか判定する
##############################

### Usage: execute as [Source] at [Destination] run function this
### Example: If you want to check the pass between a player and an entity, run below.
### execute as @p at @e[tag=X,limit=1] anchored eyes positioned ^ ^ ^ anchored feet run function <this>
### Returns: $CanSight Global == 0 when [Source] can sight on [Destination]
###                           == 1 when [Source] cannot sight on [Destination]

### 初期化
execute facing entity @s eyes positioned as 0-0-11-0-20 run tp 0-0-11-0-20 ~ ~ ~ ~ ~
execute as 0-0-11-0-20 at @s facing ^ ^ ^-1 run tp 0-0-11-0-21 ~ ~0.01 ~ ~ ~
scoreboard players set $CanSight Global 1

### 判定
execute rotated as 0-0-11-0-20 positioned ^ ^ ^102.4 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^51.2 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^25.6 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^12.8 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^06.4 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^03.2 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^01.6 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^00.8 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^00.4 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^00.2 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-11-0-20 positioned ^ ^ ^00.1 rotated as 0-0-11-0-20 positioned ^ ^ ^-102.4 unless block ~ ~ ~ minecraft:air run scoreboard players set $CanSight Global 0
