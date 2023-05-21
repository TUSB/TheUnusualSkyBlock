### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"シルバーソーサラー","color":"#FFFFFF","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.15d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Main],Level:15}]]}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,Particle]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:200,Current:150},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:12d,IgnoreBlocks:true},Direction:[-180f,-4f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:1d,Absolute:{Vertical:true}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeMain],Level:12}],[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike1],Level:12}],[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike2],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike3],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike4],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike5],Level:12}]]}]}]}]}
