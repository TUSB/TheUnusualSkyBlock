
### 斬鉄剣発動

function makeup:skill/act/knight/odin_slash/tick3

function skill:damage/load

execute as @e[distance=..7,tag=Mob] run function skill:damage/apply/
