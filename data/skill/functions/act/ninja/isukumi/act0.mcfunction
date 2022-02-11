
### 居縮発動

function makeup:skill/act/ninja/isukumi/act

execute if score _ Level matches 1 run scoreboard players set _ Isukumi 5
execute if score _ Level matches 2 run scoreboard players set _ Isukumi 10
execute if score _ Level matches 3 run scoreboard players set _ Isukumi 20

execute positioned ^ ^ ^-1 run function calc:get/angle/1
#0-0-0-0-1にRotationを保存しておく
data modify entity 0-0-0-0-1 Rotation set from storage calc: Rotation.1
execute as @e[distance=..48,tag=Mob,tag=!NoAI] run function skill:act/ninja/isukumi/calc
