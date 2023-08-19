### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:pig",CustomName:'{"translate":"ボブトン","color":"#FF0000"}',Silent:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.31d},{Item:{id:"minecraft:cooked_porkchop"},Count:1,Chance:0.1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sのタックルによって転倒し全治100年の複雑骨折を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Execute:"If",Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-5f,-75f],DirectionRange:[10f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:30d},Gravity:{Set:500d}},{Name:"Kill"}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Animal]}],Block:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,-25f],DirectionRange:[40f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Speed:{Add:8d,Limit:100d},Gravity:{Add:-0.1d,Limit:100d}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:4d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BombPig,ParticleAndSound1]},{Name:"MergeNBT",NBT:{HasVisualFire:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:100,Current:100},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BombPig,ParticleAndSound2]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Block:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,-25f],DirectionRange:[40f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Speed:{Add:-8d,Limit:5d},Gravity:{Add:0.1d,Limit:500d}}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:80,Current:80},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BombPig,ParticleAndSound2]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%1$sは%2$sの怒れる爆発によって転倒し全治3000年の複雑骨折を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:4d},Explosion:-1},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,Aec],Level:1}]]},{Name:"Kill"}]}]}]}
