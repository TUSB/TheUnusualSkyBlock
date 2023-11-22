### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnTimeOut,CooldownRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog,"Boss","CallOnAttackProjectile","CherryTree"],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"怒れる桜の木","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],PortalCooldown:7000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:15}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 3000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 3000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier6/common",Chance:d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの不自然さを問いかけた結果その代償を命で支払った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"この地を荒らす者を生かして、帰しはしない。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,Death2]}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:8,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,TurnChange]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Kill"}]}]},{Index:2,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[4f,0f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:30,Current:30},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Self"}},{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryCherryTree,PinkPearl],Level:111}],[{Tags:[Global,Ground,Shoot,AngryCherryTree,BombMarker],Level:111}]]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}},{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",OnBlock:"Bounce",Start:true,Gravity:{Set:0d}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:30,Current:30},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[0f,-70f]}],Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:50d}},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:0d},Gravity:{Set:0d}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Settings:[{Name:"Rotation",Target:{Look:"Self"}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryCherryTree,DarkBullet],Level:111}],[{Tags:[Global,Ground,Shoot,AngryCherryTree,BombMarker],Level:111}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Stop:true},{Name:"MergeNBT",NBT:{NoAI:false}},{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,TackleParticle]}]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Stick",TP:true,Start:true,Speed:{Set:100d},Gravity:{Set:0d}},{Name:"ChangeAI",Block:[{Name:"ChangeTurn",Set:6}],Attack:[{Name:"ChangeTurn",Set:6}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:5,Exit:{Time:30,TimeCount:30}},{Index:6,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[60f,0f],Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Block:[],Attack:[],Tick:[]},{Name:"SmartMotion",OnBlock:"Stick",Stop:true}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは%2$sが突撃してくるのかを問いかけた結果その代償を命で支払った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Min:0.1d,Max:7d},Explosion:-1},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:7,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"At",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryCherryTree,Pale],Level:110}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:8,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,Summon1]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
