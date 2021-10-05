
### 斬鉄剣発動

function makeup:skill/act/knight/odin_slash/tick2

function skill:damage/load

execute positioned ^ ^-2 ^10 as @e[dx=19,dy=3,dz=19,tag=Mob] run function skill:damage/apply/
