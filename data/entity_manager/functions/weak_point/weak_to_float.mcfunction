##############################
### 浮遊弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:entity.shulker_bullet.hit master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.shulker_bullet.hit master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:explosion ~ ~ ~ 0 0 0 1 2 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.15 15 force
###---演出---End
