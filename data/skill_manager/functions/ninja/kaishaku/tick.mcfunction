##############################
### 介錯パーティクル表示
##############################

#execute anchored eyes run particle minecraft:lava ^ ^ ^ 0 0 0 0 5 force
execute anchored eyes run particle minecraft:firework ^ ^ ^ 0 0 0 0.5 10 force
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:ninja/kaishaku/explode2
