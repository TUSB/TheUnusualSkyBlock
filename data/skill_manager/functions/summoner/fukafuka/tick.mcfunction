##############################
### ふかふか経過
##############################

###---演出---Start
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[tag=ShowParticles]
playsound minecraft:block.wool.place master @a[distance=..32] ~ ~ ~ 3 0.78
###---演出---End

execute unless entity @e[dx=0,tag=FukafukaPotion] run function skill_manager:summoner/fukafuka/expand
