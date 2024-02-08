
### 斬鉄剣発動

execute if score @s OdinSlash matches 26 run function makeup:skill/act/knight/odin_slash/tick1
execute if score @s OdinSlash matches 13 run function makeup:skill/act/knight/odin_slash/tick2
execute if score @s OdinSlash matches 0 run function makeup:skill/act/knight/odin_slash/tick3

function skill:damage/load

execute if score @s OdinSlash matches 13..26 positioned ^ ^-2 ^10 positioned ~-10 ~ ~-10 as @e[dx=19,dy=3,dz=19,tag=Enemy] run function skill:damage/apply/
execute if score @s OdinSlash matches 0 as @e[distance=..7,tag=Enemy] run function skill:damage/apply/
