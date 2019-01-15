##############################
### ザラキ召喚 - Event  
##############################

execute as @a[distance=..16,gamemode=!creative,gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~3 ~ {Duration:40,Radius:0f,Particle:"minecraft:block minecraft:air",Passengers:[{id:"minecraft:armor_stand",Marker:true,Tags:["Vehicle","Anchored"],Invisible:true,Passengers:[{id:"area_effect_cloud",Tags:["Anchor"],Duration:80,Radius:1f,Particle:"minecraft:damage_indicator"},{id:"area_effect_cloud",Duration:80,Radius:0.01f,Particle:"minecraft:squid_ink"},{id:"area_effect_cloud",Duration:80,Radius:1f,Particle:"minecraft:block minecraft:air",Effects:[{Id:14b,Duration:1,Amplifier:1b},{Id:15b,Duration:30,Amplifier:0b}]}]}]}
playsound minecraft:entity.blaze.death master @a[distance=..16] ~ ~ ~ 1 0.5
