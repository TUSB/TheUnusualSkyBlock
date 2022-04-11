### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:chicken",CustomName:'{"translate":"ヘルズコッコ","color":"#FF0000"}',ActiveEffects:[{Id:28b,Amplifier:10b,Duration:2147483647}],IsChickenJockey:true,Silent:true,PortalCooldown:2000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnBlock,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/magic_stone/tier1/mix",Count:1,Chance:0.1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-45f],DirectionRange:[360f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",TP:true,Speed:{Set:40d}},{Name:"Blink",Count:3,Chance:0.5d,TriggerOn:[Physical,Fire,Ice,Lightning,Dark]}],Time:[{Name:"Kill"}],Damage:[{Name:"Damage",Explosion:-1},{Name:"ChangeTurn",Set:1}],Block:[{Name:"Damage",Explosion:-1},{Name:"ChangeTurn",Set:1}],TurnCount:10,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],DirectionRange:[0f,180f]}],Name:"SmartMotion",TP:true,Speed:{Set:40d}},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:10,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:5,Current:5},Call:[{Settings:[{Name:"Rotation",Direction:[-15f,0f],Absolute:{Vertical:true}}],Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"SmartMotion",TP:true,Speed:{Add:1d}},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:5,Current:5},Call:[{Settings:[{Name:"Rotation",Direction:[15f,0f],Absolute:{Vertical:true}}],Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"SmartMotion",TP:true,Speed:{Add:1d}},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:10d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Add:-1.5d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:6,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:20,Current:20},Call:[{CallOnExit:true,Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:10d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-3f,-3f],DirectionRange:[6f,6f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,HellsChicken,NormalBullet],Level:1}]]},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:7,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"SmartMotion",Speed:{Add:8d}},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:8,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:9,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{}]}]}]}
