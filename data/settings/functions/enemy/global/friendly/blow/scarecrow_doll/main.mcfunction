### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"カカッシー","color":"#FFFF00"}',Silent:true,DeathTime:19s,Willing:false,VillagerData:{level:99,profession:"minecraft:none"},active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:weakness",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,SmartMotion,Stick,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 222.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:stick"},Count:1,CountRange:3,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sさぁ計測してやるぞ、かかってくるがいい。","with":[{"translate":"【能力：デコイ】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Gravity:{Set:100d}},{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Flip:true}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:200,Current:200},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Friendly,Blow,ScarecrowDoll,Skill]}]}]}]}
