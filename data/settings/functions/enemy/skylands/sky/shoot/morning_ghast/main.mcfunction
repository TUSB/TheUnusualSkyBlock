### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:ghast",CustomName:'{"translate":"アサガスト","color":"#FFFFFF","bold":true}',Silent:true,ExplosionPower:1b,PortalCooldown:1000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sモーニングコールの機関だ！ ヒャッハー！","with":[{"translate":"【能力：射的・昼現】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,IsDaytime],Inverse:true}],Name:"Kill"},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}}],Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:16d,Absolute:{Vertical:true}}],Name:"Teleport"}],Damage:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:3d,Absolute:{Vertical:true}}],Name:"Teleport"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:120,Current:60},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:16,Current:16},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}}],Name:"Function",Tags:[Skylands,Sky,Shoot,MorningGhast,Sound]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d},Anchor:"Eyes"},{Name:"Direction",Speed:3d}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,MorningGhast,Bullet],Level:5}]]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d},Anchor:"Eyes"},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:1d,SpeedRange:4d}],Name:"SmartMotion",OnBlock:"Bounce",Start:true,TP:true,Speed:{Set:2d}}],MP:3},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Stop:true}]}],Exit:{Loop:{Max:6,Current:6}}}]}
