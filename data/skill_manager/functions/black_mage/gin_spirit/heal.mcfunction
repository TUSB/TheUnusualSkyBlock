##############################
### ジン・スピリット 回復
##############################

#回復量設定
execute if score @s SkillAttribute matches 52041 run scoreboard players add @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] HealthHealing 2
execute if score @s SkillAttribute matches 52042 run scoreboard players add @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] HealthHealing 4
execute if score @s SkillAttribute matches 52043 run scoreboard players add @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] HealthHealing 6

kill @s

###---演出---Start
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~ ~ 1 0 1 1 10 force @a[tag=ShowParticles]
###---演出---End
