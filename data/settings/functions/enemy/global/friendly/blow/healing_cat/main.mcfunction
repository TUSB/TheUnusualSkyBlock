### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:ocelot",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,TickingRequired,DamageProjectile,FriendlyProjectile,AnalyseLog,"BeforeEvolution"],CustomNameVisible:true,CustomName:'{"translate":"フレンド・ヒーリングキャット","color":"#FFFF00","bold":true}',active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:50}],Motion:[0d,0.5d,0d],InLove:0,Age:1,Sitting:true,PortalCooldown:500,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sあんまり癒すの得意じゃないのよね～。どこかに闇系の小動物いないかしら～？","with":[{"translate":"【能力：回復・格闘】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Sitting:false}},{Name:"DelayAction",Tags:["Casting","CircleHearts"]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:30,Max:30,Current:30},Call:[{Name:"Function",Tags:[Global,Friendly,Blow,HealingCat,ParticleAndSound]},{Name:"Damage",Player:{Damage:0d,DamageType:[Global]},Distance:{Max:6d},AEC:{effects:[{id:"minecraft:instant_health",amplifier:2b,duration:100}]}},{Name:"Damage",Mob:{Hit:true,Light:60},Distance:{Max:6d}},{Name:"Function",Tags:[Global,Friendly,Blow,HealingCat,ParticleAndSound]},{Name:"DelayAction",Tags:["Casting","CircleHearts"]}],MP:10}]}],ProjectileDamage:{Light:15}}
#Function
# Sample_01--Circle
particle end_rod ^-0.0 ^0.0 ^0.03 ^3.78 ^0.0 ^999999936.0 0.00000000010 0 force
particle end_rod ^0.01 ^0.0 ^0.03 ^382683456.0 ^0.0 ^923879488.0 0.00000000010 0 force
particle end_rod ^0.02 ^0.0 ^0.02 ^707106752.0 ^0.0 ^707106752.0 0.00000000010 0 force
particle end_rod ^0.03 ^0.0 ^0.01 ^923879488.0 ^0.0 ^382683424.0 0.00000000010 0 force
particle end_rod ^0.03 ^0.0 ^-0.0 ^999999936.0 ^0.0 ^0.9 0.00000000010 0 force
particle end_rod ^0.03 ^0.0 ^-0.01 ^923879488.0 ^0.0 ^-382683424.0 0.00000000010 0 force
particle end_rod ^0.02 ^0.0 ^-0.02 ^707106752.0 ^0.0 ^-707106752.0 0.00000000010 0 force
particle end_rod ^0.01 ^0.0 ^-0.03 ^382683456.0 ^0.0 ^-923879488.0 0.00000000010 0 force
particle end_rod ^-0.0 ^0.0 ^-0.03 ^3.78 ^0.0 ^-999999936.0 0.00000000010 0 force
particle end_rod ^-0.01 ^0.0 ^-0.03 ^-382683424.0 ^0.0 ^-923879488.0 0.00000000010 0 force
particle end_rod ^-0.02 ^0.0 ^-0.02 ^-707106752.0 ^0.0 ^-707106752.0 0.00000000010 0 force
particle end_rod ^-0.03 ^0.0 ^-0.01 ^-923879488.0 ^0.0 ^-382683424.0 0.00000000010 0 force
particle end_rod ^-0.03 ^0.0 ^-0.0 ^-999999936.0 ^0.0 ^0.9 0.00000000010 0 force
particle end_rod ^-0.03 ^0.0 ^0.01 ^-923879488.0 ^0.0 ^382683424.0 0.00000000010 0 force
particle end_rod ^-0.02 ^0.0 ^0.02 ^-707106752.0 ^0.0 ^707106752.0 0.00000000010 0 force
particle end_rod ^-0.01 ^0.0 ^0.03 ^-382683424.0 ^0.0 ^923879488.0 0.00000000010 0 force
# Sample_01--Vert
particle heart ^-0.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 force
