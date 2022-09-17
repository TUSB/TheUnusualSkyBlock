### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:drowned",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"バイオ・ミュータントサメ","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:7000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnAttack,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 10d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 10
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -8
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -8
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier7/mix",Count:1,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによっておいしく食べられました。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Start:true,Speed:{Set:0d},Gravity:{Set:0d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,DownAlign1]}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],Attack:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],Block:[{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water]},{Name:"CheckNBT",NBT:{OnGround:true}}],Name:"SmartMotion",TP:true,Gravity:{Set:-10d}}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3}]}]},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:20,Current:20},Call:[{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water]}],Name:"SmartMotion",Gravity:{Add:1d,Limit:10d}},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"SmartMotion",Gravity:{Add:-1d,Limit:10d}},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[35f,0f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:2d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:50d,Range:80d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:5}]}]},{Index:4,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:20,Current:20},Call:[{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water]}],Name:"SmartMotion",Gravity:{Add:1d,Limit:10d}},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"SmartMotion",Gravity:{Add:-1d,Limit:10d}},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-35f,0f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:2d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:50d,Range:80d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:5}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:64d}}],Name:"ChangeTurn",Set:2},{Name:"SmartMotion",Gravity:{Set:0d}},{Name:"ChangeAI",Block:[{}]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:10d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Speed:3d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:4d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Add:20d,Limit:150d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:40,Current:40},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:4d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Add:-4d,Limit:20d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2},{Name:"ChangeAI",Block:[{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water]},{Name:"CheckNBT",NBT:{OnGround:true}}],Name:"SmartMotion",TP:true,Gravity:{Set:-10d}}]}]}]}]}
