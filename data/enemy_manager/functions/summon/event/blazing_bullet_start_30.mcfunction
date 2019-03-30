##############################
### ブレイジングバレット始召喚 - Event  
##############################

tag @s remove Garbage
scoreboard players set @s DecrementTimer 100
data merge entity @s {Tags:["Swim","InAir","InWater","InLava","Straight","Horizontal","CallOnFin","Event","BlazingBullet","CooldownRequired"],PortalCooldown:5s,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.3d,UUIDLeast:0l}]}]}
function enemy_manager:swim/straight
