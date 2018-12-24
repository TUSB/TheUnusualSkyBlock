##############################
### ブレイズボール召喚 - Event  
##############################

summon minecraft:fireball ~ ~ ~ {direction:[0d,0d,0d],Tags:["AimOnInit","Direction"],Air:400s,ExplosionPower:4,NoGravity:true}
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 2 0 1
