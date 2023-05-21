### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombified_piglin",CustomName:'{"translate":"アクアドルフィン","color":"#FF0000","bold":true}',Silent:1b,IsBaby:true,AngerTime:20000000,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,CallOnTick,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sを消す方法を誤って実行してしまい削除されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"何を検索しますか？ ヒューマン。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-5f,-80f],DirectionRange:[10f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:90d},Gravity:{Set:500d}}],Block:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,-110f],DirectionRange:[40f,50f]}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Speed:{Set:40d,Range:70d}}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionToRotation]}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:32,Max:32,Current:32},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.3d},{Name:"MP",MP:10}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:0d}}]}],Exit:{Loop:{Max:8,Current:8}}},{Index:3,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:5}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"突進準備します","color":"#CA3737"}'}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:250d}}]},{Interval:{Min:50,Max:50,Current:50},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1},{Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:500d}}]}]},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"Laser",Laser:"BlueLaser",Loop:30}]},{Interval:{Min:8,Max:8,Current:8},Loop:{Max:3,Current:3,Range:2},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,AquaDolphin,BubbleLauncher],Level:20}]]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1},{Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:500d}}]}]}]}
