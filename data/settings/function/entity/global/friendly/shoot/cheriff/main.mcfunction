### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Helper"],CustomName:'{"translate":"チェリフ","color":"#FFFF00","bold":true}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:0b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.8d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -8
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:apple"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s治安警備をする保安魔果実。マウンテン丸男からは畏怖の念を込めて無糖果さんと呼ばれている。「今日も弾丸が撃ちたくなってきたぜぇぇええ～！ 待ってろ賞金首共～！」","with":[{"translate":"【能力：ワープ・格闘・移動・射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonExe,HelperSpawnLimit]}],Death:[{Name:"function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Damage:[{Name:"function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Tick:[{Condition:[{Name:"random_chance",Chance:0.15d}],Name:"function",Tags:[Global,Friendly,Shoot,Cheriff,ParticleAndSound1]},{Condition:[{Name:"random_chance",Chance:0.5d}],Name:"function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:30,Current:10},Loop:{Max:1,Current:1,Range:2},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]},{Name:"function",Tags:[Global,Event,Function,AttackSound,Teleport2]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:1d,SpeedRange:3d},{Name:"Direction",Direction:[0f,-90f],Speed:2.5d,Absolute:{Vertical:true}}],Name:"teleport"},{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:32d}}],Name:"change_turn",Set:2}]},{Interval:{Min:5,Max:30,Current:10},Loop:{Max:1,Current:1,Range:2},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Enemy",Radius:32d}}],Name:"function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]},{Name:"function",Tags:[Global,Event,Function,AttackSound,Teleport2]},{Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:5d,SpeedRange:11d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,SpeedRange:6d,Absolute:{Vertical:true}}],Name:"teleport"},{Name:"change_turn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:80d,IgnoreBlocks:true}}],Name:"laser",Laser:"GreenLaser",Loop:80},{Name:"function",Tags:[Global,Event,Function,AttackSound,Warning]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1,Range:5},Call:[{Condition:[{Name:"mp",MP:16,Percent:true}],Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,MinRadius:0.1d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-1f,-1f],DirectionRange:[2f,2f]},{Name:"Direction",Speed:1d}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Cheriff,Bullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Cheriff,BulletMarker],Level:1}]]},{Condition:[{Name:"min_mp",Inverse:true,MP:5,Percent:true}],Name:"change_turn",Set:4}]},{Interval:{Min:3,Max:6,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:4,Current:4},Call:[{Name:"function",Tags:[Global,Friendly,Shoot,Cheriff,ParticleAndSound3]},{Condition:[{Name:"mp",MP:-9999}]}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{physical:150,magic:20}}
#Function
particle minecraft:squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0.25 20 force @a[distance=..32]

