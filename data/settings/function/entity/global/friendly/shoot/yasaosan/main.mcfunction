### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Helper"],CustomName:'{"translate":"ヤサオサン","color":"#FFFF00","bold":true}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:0b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:carrot"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s優しい野菜。略してヤサオ。農業家からは尊敬の念を込めてサン付けされている。「今日も畑の肥料が足りなくなってきたな～！ 待ってろ肥料共～！」","with":[{"translate":"【能力：格闘・移動・射的・作物成長】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonExe,HelperSpawnLimit]}],Death:[{Name:"function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Damage:[{Name:"function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Tick:[{Condition:[{Name:"random_chance",Chance:0.15d}],Name:"function",Tags:[Global,Friendly,Shoot,Yasaosan,ParticleAndSound1]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-10f,-30f],DirectionRange:[20f,60f]},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:7d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"smart_motion",TP:true,Speed:{Add:-4d,Limit:5d}}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:100,Current:20},Call:[{Name:"smart_motion",Start:true,Speed:{Set:3d},Gravity:{Set:0d}},{Name:"smart_motion",Stop:true},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"change_turn",Set:2},{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:32d,MinRadius:0.5d}}],Name:"change_turn",Set:3}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:8,Range:4},Call:[{Name:"function",Tags:[Global,Event,Function,AttackSound,ThrownBeing]},{Name:"function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,MinRadius:0.1d}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]},{Name:"Direction",Speed:1d}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Yasaosan,Bullet],Level:1}]]}],MP:3},{Interval:{Min:20,Max:50,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:4},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Friendly,Shoot,Yasaosan,Grow]}]}]},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:8,Range:4},Call:[{Name:"function",Tags:[Global,Event,Function,AttackSound,ThrownBeing]},{Name:"function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,MinRadius:0.1d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]},{Name:"Direction",Speed:1d}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Yasaosan,Bullet],Level:1}]]}],MP:3}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,MinRadius:3d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"smart_motion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:80d,Range:170d},Gravity:{Set:0d}}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{physical:150,magic:10}}
#Function
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.25 20 force @a[distance=..32]
particle item{item:{id:"carrot"}} ~ ~ ~ 0.05 0.05 0.05 0.45 40 force @a[distance=..32]
