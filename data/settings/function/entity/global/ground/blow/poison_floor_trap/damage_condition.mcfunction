#Function
data modify storage skill: Damage set from storage mob_data: Call.Mob
function skill:damage/add/skill/normal
execute as @e[distance=..2.5,tag=Enemy,tag=!Trap] run function skill:damage/apply/
data remove storage mob_data: Call.Mob
execute at @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] run function skill:enemy/damage/
