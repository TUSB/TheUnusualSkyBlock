### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,SmartMotion,Bounce,AnalyseLog,"NonBurst","Trap"],CustomName:'{"translate":"ケミカルドラム","color":"#FF8000","bold":true}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Duration:-1,Amplifier:1b,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1019}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾌﾟﾁｯ」%1$sは%2$sによって轢かれカーペットとして第二の生を歩み出した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s危険物取扱注意。殴った方向に転がり敵味方の区別なく轢いていき、最後には大爆発する危険なタル。","with":[{"translate":"【能力：移動・範囲攻撃・コール・ノンバースト】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,TrapSpawnLimit]},{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}}],Name:"SmartMotion",Gravity:{Set:330d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RemoveEnemyCollision]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RemoveFriendlyCollision]}],Death:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.35d}],Name:"Spawn",NonParentLevel:true,Count:1,CountRange:4,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:1}]]}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは%2$sの爆発に巻きこまれ頭皮に致命的を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Hit:true,Physical:50,Fire:300},Distance:{Max:7d},Explosion:-1},{Name:"ChangeAI",Death:[{}]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Flip:true},{Name:"Rotation",Direction:[0f,20f],DirectionRange:[0f,15f]}],Name:"SmartMotion",TP:true,Speed:{Set:50d},E:100},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1020}}]}},{Name:"SmartMotion",Speed:{Add:5d,Limit:100d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,AddEnemyCollision]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,AddFriendlyCollision]},{Name:"Function",Tags:[Global,Neutrality,Blow,RollingBarrel,Moving]},{Name:"ChangeStatus",Attack:{Set:250},SpecialAttack:{Set:250}},{Name:"ChangeAI",Damage:[{Name:"Function",Tags:[Global,Neutrality,Blow,WoodenContainer,BangingContainer]}],Attack:[{Name:"Function",Tags:[Global,Neutrality,Blow,WoodenContainer,BangingContainer]},{Condition:[{Name:"HP",HP:5},{Name:"HasTarget",Inverse:true,Target:{Look:"Mob",Radius:0.1d,IgnoreBlocks:true}},{Name:"HasTarget",Target:{Look:"Mob",Radius:1d,IgnoreBlocks:true}},{Name:"HasTarget",Inverse:true,Target:{Look:"Mob",Radius:0.1d,IgnoreBlocks:true}}],Settings:[{Name:"As",Target:{Look:"Mob",Radius:1d,IgnoreBlocks:true}},{Name:"Rotation",Target:{Look:"All",Radius:1d,IgnoreBlocks:true}}],Name:"Step",Speed:8d}],Block:[{Name:"Function",Tags:[Global,Neutrality,Blow,WoodenContainer,BangingContainer]},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionZerospeed]}],Name:"MergeNBT",NBT:{NoAI:true,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1019}}]}},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionZerospeed]}],Name:"SmartMotion",Stop:true}]}],ProjectileDamage:{Physical:250}}
