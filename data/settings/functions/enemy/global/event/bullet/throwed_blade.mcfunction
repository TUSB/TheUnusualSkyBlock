### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,Tags:[DelayedData,HasAI,CallOnInit,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:5}},{}],Pose:{RightArm:[50f,0f,80f]}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:True}}],Name:"SmartMotion",Speed:{Set:40d}}],TurnCount:1,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[59f,0f]}]}
