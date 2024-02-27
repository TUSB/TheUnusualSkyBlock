### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Helper"],CustomName:'{"translate":"チェリフ","color":"#FFFF00","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:0b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:apple"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s治安警備をする保安魔果実。マウンテン丸男からは畏怖の念を込めて無糖果さんと呼ばれている。「今日も弾丸が撃ちたくなってきたぜぇぇええ～！ 待ってろ賞金首共～！」","with":[{"translate":"【能力：ワープ・格闘・移動・射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Tick:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[Global,Friendly,Shoot,Cheriff,ParticleAndSound1]},{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:30,Current:10},Loop:{Max:1,Current:1,Range:2},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Teleport2]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:1d,SpeedRange:3d},{Name:"Direction",Direction:[0f,-90f],Speed:2.5d,Absolute:{Vertical:true}}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:32d}}],Name:"ChangeTurn",Set:2}]},{Interval:{Min:5,Max:30,Current:10},Loop:{Max:1,Current:1,Range:2},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Enemy",Radius:32d}}],Name:"Function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Teleport2]},{Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:5d,SpeedRange:11d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,SpeedRange:6d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:80d,IgnoreBlocks:true}}],Name:"Laser",Laser:"GreenLaser",Loop:80},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Warning]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1,Range:5},Call:[{Condition:[{Name:"MP",MP:16,Percent:true}],Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,MinRadius:0.1d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-1f,-1f],DirectionRange:[2f,2f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Cheriff,Bullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Cheriff,BulletMarker],Level:1}]]},{Condition:[{Name:"MinMP",Inverse:true,MP:5,Percent:true}],Name:"ChangeTurn",Set:4}]},{Interval:{Min:3,Max:6,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:4,Current:4},Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,Cheriff,ParticleAndSound3]},{Condition:[{Name:"MP",MP:-9999}]}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{Physical:150,Dark:20}}
#Function
# 出現時半径128m以内にいるヘルパーグループのMOB8体までに近い順で削除除外タグを付与
tag @e[tag=Helper,tag=!Garbage,distance=..128,sort=nearest,limit=7] add IgnoreGarbage
# 削除除外されなかった遠いMOBは削除
tag @e[tag=Helper,tag=!Garbage,tag=!IgnoreGarbage,distance=..128] add Garbage
# 除外タグを片付け
tag @e[tag=IgnoreGarbage,distance=..128] remove IgnoreGarbage
particle minecraft:squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0.25 20 force @a[distance=..32]

