##############################
### 吸血コウモリ召喚 - Underworld Sky Blow
##############################

summon bat ~ ~1 ~ {DeathLootTable:"loot_manager:empty",CustomName:"\"吸血コウモリ\"",Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:50,LifeTime:1600.00d},TargetSettings:{Target:"Ally",Active:"Always",Detect:"BySight",Destination:"Update",FollowRange:16.00d,DesiredHeight:4.00d,DesiredDistance:4.00d},MoveSettingsList:[{OnClose:{ForwardBy:1},SpinSpeed:2d,Forward:{Speed:0.3d},Repeater:{Start:{Mean:5d,Range:5d},End:{Mean:20d,Range:5d},Count:3,Recycle:On}},{OnClose:{ForwardBy:-2},SpinSpeed:2d,Forward:{Speed:-0.3d},Repeater:{Start:{Mean:5d,Range:5d},End:{Mean:20d,Range:5d},Count:1,Recycle:On}}]}}},{id:skeleton,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:50,MP:0,LifeTime:400.00d}}}},{id:area_effect_cloud,Tags:[Cargo,Enemy],Particle:"minecraft:block minecraft:air",CustomName:"\"ブラウンシュート\"",Duration:99,Radius:1.55f,Effects:[{Id:4b,Amplifier:2b,Duration:80},{Id:7b,Amplifier:0b,Duration:1}]}]}]}
