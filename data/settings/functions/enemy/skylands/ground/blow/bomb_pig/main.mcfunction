### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:pig",CustomName:'{"translate":"ボブトン","color":"#FFFFFF"}',Silent:true,PortalCooldown:2000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnBlock,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:0.3d},{Item:{id:"minecraft:cooked_porkchop"},Count:1,Chance:0.1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}}],Name:"Kill"},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-5f,-90f],DirectionRange:[10f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:20d},Gravity:{Set:100d}}],Time:[{Name:"Kill"}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Animal]}],Block:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,-90f],DirectionRange:[40f,0f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Speed:{Add:0.5d},Gravity:{Add:-1d}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:4d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BombPig,ParticleAndSound1]},{Name:"MergeNBT",NBT:{HasVisualFire:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:200,Current:200},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BombPig,ParticleAndSound2]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Explosion:4},{Name:"Kill"}]}]}]}
