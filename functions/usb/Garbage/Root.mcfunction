###スライム処理
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players tag @e[tag=Slimy] add Garbage {AbsorptionAmount:0f}
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /entitydata @e[tag=Garbage] {Size:0}
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /entitydata @e[type=minecraft:magma_cube,tag=Garbage,name=!　] {Size:1,CustomName:"　",CustomNameVisible:false}
###タイマー処理
scoreboard players tag @e[tag=CooldownRequired] add Garbage {PortalCooldown:0}
###kill
execute 0-0-1-0-1 ~ ~ ~ /entitydata @e[tag=Garbage] {Health:0f,DeathTime:19s,Silent:true}
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /kill @e[tag=Garbage]
