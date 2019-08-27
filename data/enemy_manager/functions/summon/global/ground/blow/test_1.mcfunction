##############################
### テストハスク召喚 - Global Ground Blow
##############################

summon husk ~ ~1 ~ {NoGravity:true,Glowing:true,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:100,MP:0,LifeTime:600.00d},TargetSettings:{Target:"Natural",Active:"Always",Detect:"Nearest",Destination:"Update",FollowRange:32.00d}}}},{id:creeper,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:50,MP:0,LifeTime:400.00d}}}}]},{id:skeleton,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:50,MP:0,LifeTime:400.00d}}}},{id:wither_skeleton,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:20,MP:0,LifeTime:200.00d}}}}]}]},{id:creeper,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:50,MP:0,LifeTime:400.00d}}}}]}]}
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 2 0.7 1
particle minecraft:heart ~ ~ ~
