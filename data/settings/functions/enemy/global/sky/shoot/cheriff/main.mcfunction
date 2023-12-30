### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:allay",Team:"Friendly",CustomName:'{"translate":"チェリフ","color":"#FFFF00","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:0b,Duration:-1,ShowParticles:false}],PortalCooldown:5000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:apple"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s優しい野菜。略してヤサオ。農業家からは尊敬の念を込めてサン付けされている。%2$s楽しそうに周囲を飛び回る性質がある。「今日も畑の肥料が足りなくなってきたな～！ 待ってろ肥料共～！」","with":[{"translate":"【能力：格闘・移動・射的・作物成長】","color":"#00FF00"},{"translate":"アイテムを右クリックで渡したり、音符ブロックを鳴らすと","color":"#FF7500"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveHighPitch]}],Tick:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[Global,Sky,Shoot,Cheriff,ParticleAndSound1]},{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:40,Current:20},Call:[{Execute:"Random",Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:1d,SpeedRange:3d},{Name:"Direction",Direction:[0f,-90f],Speed:3d,Absolute:{Vertical:true}}],Name:"Teleport"},{Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:7d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,Absolute:{Vertical:true}}],Name:"Teleport"}]},{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonParticle,Flash]}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1,Range:5},Call:[{}]},{Interval:{Min:3,Max:6,Current:3},Loop:{Max:1,Current:1},Call:[{}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:20,Max:20,Current:20},Call:[{}]}]}],ProjectileDamage:{Physical:150,Light:10}}
