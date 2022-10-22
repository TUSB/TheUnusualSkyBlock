### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"バンパーストーム","color":"#FF0000","bold":true}',IsBaby:true,ActiveEffects:[{Id:28b,Duration:2147483647,Amplifier:1b,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnAttack,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:99}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 8d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 70
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier4/mix",Count:1,Chance:0.51d},{Loot:"item:item/carrot_on_a_stick/entity/jumping_board",Count:1,Chance:0.05d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾄﾞｺﾞｫｫｫｫ!!」%2$sの質量のある突風に激突し%1$sはきりもみ回転をしながら地面へと激突した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:20d,Range:40d},Gravity:{Set:100d},E:120}],Attack:[{Name:"Damage",Player:{DamageType:[Fall],DeathCause:'[{"translate":"「ﾄﾞｺﾞｫｫｫｫ!!」%2$sの質量のある突風に激突し%1$sはきりもみ回転をしながら地面へと激突した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'},Distance:{Max:1d},AEC:{Effects:[{Id:25b,Amplifier:80b,Duration:8,ShowParticles:false},{Id:25b,Amplifier:0b,Duration:16,ShowParticles:false},{Id:17b,Amplifier:3b,Duration:120,ShowParticles:false}]}},{Name:"ChangeTurn",Set:3}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Flip:true}],Name:"SmartMotion",TP:true,Speed:{Set:-20d},Gravity:{Set:0d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:2d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:3d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ApplyRotation]},{Name:"SmartMotion",TP:true,KeepRotation:true,Speed:{Add:1d,Limit:20d}}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:20d,Range:40d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",TP:true,Speed:{Set:40d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:0d}}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:2,Current:2}}}]}
