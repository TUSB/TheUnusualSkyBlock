##############################
### 松明キャノン召喚
##############################

summon minecraft:ender_pearl ~ ~1.5 ~ {Tags:["AimingPlayer","Direction"],Air:160s,FallDistance:5180f,NoGravity:true,Passengers:[{id:"minecraft:arrow",CustomName:"\"松明キャノン\"",Tags:["AimingPlayer","Direction","Cargo","Torch"],Air:80s,FallDistance:5180f,Color:16773632,life:1200,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"minecraft:flame",Tags:["Cargo"],Duration:99,Radius:0.001f},{id:"minecraft:area_effect_cloud",Particle:"minecraft:block minecraft:air",Tags:["Cargo"],Duration:99,Radius:1.9f,Effects:[{Id:6b,Amplifier:127b,Duration:1},{Id:7b,Amplifier:127b,Duration:1},{Id:21b,Amplifier:0b,Duration:100000}]}]}]}

