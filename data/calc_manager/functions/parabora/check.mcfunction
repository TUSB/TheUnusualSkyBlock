##############################
### 放物線で視線が通るか判定する
##############################

### Note: Limit of Distance is 32m. Limit of Resolution is 0.5m.

### Usage: execute as [Source] at [Destination] run function this.
### Example: If you want to check the parabolic path between a player and an entity, run below.
### execute as @p at @e[tag=X,limit=1] anchored eyes positioned ^ ^ ^ anchored feet run function <this>
### Returns: $ReachParabolic Global == 1 when [Source] can reach [Destination] parabolically.
###                                 == 0 when [Source] can not reach [Destination] parabolically.

### 初期化
# ターゲットの座標を保持する
execute in overworld facing entity @s eyes run tp 0-0-0-0-30 ~ ~ ~ ~ ~
execute positioned as @s anchored eyes positioned ^ ^ ^ anchored feet in overworld facing ~ ~1 ~ run tp 0-0-0-0-31 ^ ^ ^0.5 ~ ~
execute positioned as @s anchored eyes positioned ^ ^ ^ anchored feet in overworld facing entity 0-0-0-0-30 feet run tp 0-0-0-0-32 ^ ^ ^0.5 ~ ~
# execute as @e[tag=AEC31AND32,limit=2] at @s positioned ^ ^ ^0.1 facing entity 0-0-0-0-30 feet run tp @s ~ ~ ~ ~ ~

### 初期化２
execute facing entity @s eyes positioned as 0-0-0-0-20 in overworld run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute as 0-0-0-0-20 at @s facing ^ ^ ^-1 run tp 0-0-0-0-21 ~ ~0.01 ~ ~ ~

### ディメンション取得
execute store result score $Dimension Global run data get entity @s Dimension 0

### 判定
scoreboard players set $ParaboraFlag Local 1
 # overworld
execute if score $Dimension Global matches 0 in overworld rotated as 0-0-0-0-20 positioned ^ ^ ^32 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^16.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^16.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^08.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^08.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^04.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^04.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^02.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^02.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^01.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.5 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.5 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.25 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.25 run function calc_manager:parabora/overworld/sub
 # nether
execute if score $Dimension Global matches 0 in overworld rotated as 0-0-0-0-20 positioned ^ ^ ^32 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^16.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^16.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^08.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^08.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^04.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^04.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^02.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^02.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^01.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.5 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.5 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.25 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.25 run function calc_manager:parabora/nether/sub
 # end
execute if score $Dimension Global matches 0 in overworld rotated as 0-0-0-0-20 positioned ^ ^ ^32 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^16.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^16.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^08.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^08.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^04.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^04.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^02.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^02.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.0 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^01.0 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.5 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.5 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.25 if entity @s[distance=..32] rotated as 0-0-0-0-20 positioned ^ ^ ^00.25 run function calc_manager:parabora/end/sub

### エンティティ返却
execute in overworld run tp 0-0-0-0-30 0.0 3.0 0.0
execute in overworld run tp 0-0-0-0-31 0.0 3.1 0.0
execute in overworld run tp 0-0-0-0-32 0.0 3.2 0.0

### 結果
scoreboard players operation $ReachParabolic Global = $ParaboraFlag Local
