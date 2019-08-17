##############################
### アイシングレイ ダメージ
##############################


playsound minecraft:block.anvil.land master @a[distance=..32] ~ ~ ~ 0.2 2 0.1
playsound minecraft:item.shield.break master @a[distance=..32] ~ ~ ~ 0.2 2 0.1
playsound minecraft:item.armor.equip_diamond master @a[distance=..32] ~ ~ ~ 0.2 0 0.1
particle minecraft:item minecraft:ice ~ ~0.5 ~ 0.5 0.5 0.5 0.35 20 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["TickingRequired"],PortalCooldown:30,Particle:"minecraft:block minecraft:air",Duration:999,Radius:0.001f,ReapplicationDelay:0,Passengers:[{id:"minecraft:armor_stand",Tags:["TickingRequired","RandomPoseHead","RandomPoseHands","RandomRotation"],Air:300s,PortalCooldown:30,Invisible:true,Invulnerable:true,DisabledSlots:31,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:ice",Count:1b},{id:"minecraft:ice",Count:1b}]},{id:"minecraft:armor_stand",Tags:["TickingRequired","RandomPoseHead","RandomPoseHands","RandomRotation"],Air:300s,PortalCooldown:30,Invisible:true,Invulnerable:true,DisabledSlots:31,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:ice",Count:1b},{id:"minecraft:ice",Count:1b}]},{id:"minecraft:armor_stand",Tags:["TickingRequired","RandomPoseHead","RandomPoseHands","RandomRotation"],Air:300s,PortalCooldown:30,Small:true,Invisible:true,Invulnerable:true,DisabledSlots:31,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:ice",Count:1b},{id:"minecraft:ice",Count:1b}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["TickingRequired","CallOnFin","Event","CrushedIce"],PortalCooldown:30,Particle:"minecraft:block minecraft:air",CustomName:"\"アイシクルエッジ\"",Duration:999,Radius:1.5f,ReapplicationDelay:0,Effects:[{Id:2b,Amplifier:10b,Duration:100},{Id:4b,Amplifier:10b,Duration:100},{Id:7b,Amplifier:1b,Duration:1},{Id:11b,Amplifier:127b,Duration:0},{Id:18b,Amplifier:10b,Duration:100}]}]}]}
tag @s add Applied
