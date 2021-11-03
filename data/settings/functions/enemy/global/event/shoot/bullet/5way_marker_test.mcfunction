### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Marker:true,Invisible:true,PortalCooldown:2,Tags:[Mob,DelayedData,DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Execute:"All",Name:"Spawn",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,5WayArrow],Level:1}]],Direction:[-30f,-5f],Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Speed:0.2d,Rotation:{Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Direction:[-30f,-5f]}},{Name:"Spawn",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,5WayArrow],Level:1}]],Direction:[-15f,-5f],Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Speed:0.2d,Rotation:{Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Direction:[-15f,-5f]}},{Name:"Spawn",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,5WayArrow],Level:1}]],Direction:[0f,-5f],Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Speed:0.2d,Rotation:{Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Direction:[0f,-5f]}},{Name:"Spawn",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,5WayArrow],Level:1}]],Direction:[15f,-5f],Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Speed:0.2d,Rotation:{Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Direction:[15f,-5f]}},{Name:"Spawn",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,5WayArrow],Level:1}]],Direction:[30f,-5f],Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Speed:0.2d,Rotation:{Target:{Look:"player",Radius:24.0d,IgnoreBlocks:true},Direction:[30f,-5f]}}]}
#Function
particle ambient_entity_effect ~ ~ ~ 0.8 0.1 0.8 1 32 normal
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 2 2 1
