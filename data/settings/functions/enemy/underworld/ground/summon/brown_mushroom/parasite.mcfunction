### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"茶キノコに寄生された村人","color":"#FFFFFF","bold":true}',PatrolLeader:false,Patrolling:false,CanJoinRaid:false,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnInit,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:9}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:2,Chance:0.35d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sキノコに人格が支配されている。","with":[{"translate":"【能力：移動・反撃・置換】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:10,RangeSpeed:25}],Death:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d}},{Name:"RandomChance",Chance:0.35d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Metamorphose,SpawnParticles],Level:22}]]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Mankind]},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:10,RangeSpeed:25},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16d}}],Name:"Step",Direction:[0f,-13f],Speed:0.8d,SpeedRange:1.6d}],Attack:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Mankind]}]}
