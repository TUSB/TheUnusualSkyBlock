##############################
### 介錯パーティクル表示
##############################

###---演出---Start
execute anchored eyes run particle minecraft:firework ^ ^ ^ 0 0 0 0.5 10 force @a[tag=ShowParticles]
###---演出---End
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:ninja/kaishaku/explode2
