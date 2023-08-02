### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:chicken",CustomName:'{"translate":"コッコド・ヘルシェフ","color":"#FF0000"}',ActiveEffects:[{Id:28,Amplifier:10b,Duration:-1}],IsChickenJockey:true,Silent:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,CallOnTick,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 120
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier7/common",Count:1,Chance:0.51d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「止まって見えるぜ、ヒヨコマン。」%1$sは%2$sの声が思いのほか渋かったことに驚き心肺停止した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-45f],DirectionRange:[360f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",TP:true,Speed:{Set:40d}},{Name:"Blink",Count:3,Chance:0.5d,TriggerOn:[Physical,Fire,Ice,Lightning,Dark]}],Damage:[{Name:"Damage",Explosion:-1},{Name:"ChangeTurn",Set:1}],Block:[{Name:"ChangeTurn",Set:1}],Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,CockdoHellchef,ParticleAndSound]}],TurnCount:9,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],DirectionRange:[0f,180f]}],Name:"SmartMotion",TP:true,Speed:{Set:10d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Loop:1},{Name:"ChangeTurn",Loop:2},{Name:"ChangeTurn",Loop:3},{Name:"ChangeTurn",Loop:6}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:2,Current:2,Range:6},Call:[{Settings:[{Name:"Rotation",Direction:[-30f,0f],Absolute:{Vertical:true}}],Condition:[{Name:"RandomChance",Chance:0.7d}],Name:"SmartMotion",TP:true,Speed:{Add:4d,Limit:80d}}]},{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:2,Current:2,Range:6},Call:[{Settings:[{Name:"Rotation",Direction:[30f,0f],Absolute:{Vertical:true}}],Condition:[{Name:"RandomChance",Chance:0.7d}],Name:"SmartMotion",TP:true,Speed:{Add:4d,Limit:80d}}]},{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10,Range:30},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:10d}},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-4f,-4f],DirectionRange:[8f,8f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,NormalBullet],Level:1}]]}],MP:2}],Exit:{Loop:{Max:1,Current:1}}},{Index:6,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10},Call:[{Name:"SmartMotion",Speed:{Add:2d,Limit:80d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:7,Skill:[{Interval:{Min:100,Max:100,Current:100},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:8,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",MP:1}],Name:"DelayAction",Tags:["Casting","FinishingMove"]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:5d}}]},{Interval:{Min:70,Max:70,Current:70},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true},Anchor:"Eyes"}]},{Name:"SmartMotion",TP:true},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[0f,-12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[0f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[0f,12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-12f,-12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-12f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-12f,12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[12f,-12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[12f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[12f,12f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,CockdoHellchef,SoulSaltissimo],Level:1}]]}],MP:30},{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:9,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
