##############################
### ブラウンシュート召喚 - Global Sky Blow
##############################

summon snowball ~ ~1 ~ {Tags:[Enemy,Bullet],NoGravity:1b,Item:{id:brown_wool,Count:1b},Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{LifeTime:200.00d},TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Direction",FollowRange:24.00d},MoveSettingsList:[{Forward:{Speed:0.5d},Repeater:{End:{Mean:0d,Range:0.00d},Recycle:On}}]}}},{id:area_effect_cloud,Tags:[Cargo,Enemy],Particle:"minecraft:block minecraft:air",CustomName:"\"ブラウンシュート\"",Duration:99,Radius:1.55f,Effects:[{Id:4b,Amplifier:2b,Duration:80},{Id:7b,Amplifier:0b,Duration:1}]},{id:area_effect_cloud,Tags:[Cargo,Enemy],CustomName:"\"ブラウンシュート\"",Particle:"minecraft:dust 3 3 0 1",Duration:99,Radius:0.05f}]}
