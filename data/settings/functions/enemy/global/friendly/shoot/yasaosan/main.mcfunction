### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Helper"],CustomName:'{"translate":"ヤサオサン","color":"#FFFF00","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:0b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:carrot"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s優しい野菜。略してヤサオ。農業家からは尊敬の念を込めてサン付けされている。「今日も畑の肥料が足りなくなってきたな～！ 待ってろ肥料共～！」","with":[{"translate":"【能力：格闘・移動・射的・作物成長】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Tick:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[Global,Friendly,Shoot,Yasaosan,ParticleAndSound1]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-10f,-30f],DirectionRange:[20f,60f]},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:7d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Add:-4d,Limit:5d}}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:100,Current:20},Call:[{Name:"SmartMotion",Start:true,Speed:{Set:3d},Gravity:{Set:0d}},{Name:"SmartMotion",Stop:true},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:32d,MinRadius:0.5d}}],Name:"ChangeTurn",Set:3}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:8,Range:4},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,ThrownBeing]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,MinRadius:0.1d}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Yasaosan,Bullet],Level:1}]]}],MP:3},{Interval:{Min:20,Max:50,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Friendly,Shoot,Yasaosan,Grow]}]}]},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:8,Range:4},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,ThrownBeing]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,MinRadius:0.1d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Yasaosan,Bullet],Level:1}]]}],MP:3}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,MinRadius:3d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:80d,Range:170d},Gravity:{Set:0d}}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{Physical:150,Light:10}}
#Function
# 出現時半径128m以内にいるヘルパーグループのMOB8体までに近い順で削除除外タグを付与
tag @e[tag=Helper,tag=!Garbage,distance=..128,sort=nearest,limit=7] add IgnoreGarbage
# 削除除外されなかった遠いMOBは削除
tag @e[tag=Helper,tag=!Garbage,tag=!IgnoreGarbage,distance=..128] add Garbage
# 除外タグを片付け
tag @e[tag=IgnoreGarbage,distance=..128] remove IgnoreGarbage
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.25 20 force @a[distance=..32]
particle item carrot ~ ~ ~ 0.05 0.05 0.05 0.45 40 force @a[distance=..32]
