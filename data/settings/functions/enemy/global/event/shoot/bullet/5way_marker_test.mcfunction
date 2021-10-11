### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Execute:"All",Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,Bullet,TargetBullet],Level:1}]],Direction:[-30f,0f],Speed:0.8d},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,Bullet,TargetBullet],Level:1}]],Direction:[-15f,0f],Speed:0.8d},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,Bullet,TargetBullet],Level:1}]],Direction:[0f,0f],Speed:0.8d},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,Bullet,TargetBullet],Level:1}]],Direction:[15f,0f],Speed:0.8d},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,Bullet,TargetBullet],Level:1}]],Direction:[30f,0f],Speed:0.8d},{Name:"Kill"}]}
#演出
particle ambient_entity_effect ~ ~ ~ 0.8 0.1 0.8 1 32 normal
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 2 2 1
