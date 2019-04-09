##############################
### 円運動
##############################

### 角度を更新
scoreboard players add @s CircleAngle 35
execute store result entity 0-0-0-0-0 Rotation[0] float 1 run scoreboard players get @s CircleAngle

### PQ捕捉
tag @e[tag=CircleEdge,sort=nearest,limit=2] add Edge

### 自身捕捉
tag @s add Point

### 円を描く
function calc_manager:get/motion1
execute as @e[tag=Edge,sort=nearest,limit=1] at @s facing entity @e[tag=Edge,sort=furthest,limit=1] feet positioned ^ ^2000 ^ rotated as 0-0-0-0-0 rotated ~ 0 positioned ^ ^ ^-10 facing entity @s feet positioned ^ ^ ^2000 rotated as 0-0-0-0-0 rotated ~ 0 positioned ^ ^ ^10 facing entity @s feet positioned as @s positioned as @e[tag=Edge,sort=furthest,limit=1] positioned ^ ^ ^2000 facing entity @s feet positioned ^ ^ ^2000 run tp @e[tag=Point,limit=1] ~ ~ ~ ~ ~
function calc_manager:set/motion1

### タグリセット
tag @s remove Point
tag @e[tag=Edge,limit=1] remove Edge
