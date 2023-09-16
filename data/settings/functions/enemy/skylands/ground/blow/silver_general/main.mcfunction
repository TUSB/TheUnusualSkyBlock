### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"シルバージェネラル","color":"#FF0000","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:12s}]}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverGeneral,Particle]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:150,Max:300,Current:80},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Function",Tags:[Skylands,Ground,Blow,SilverGeneral,HealMarkerSummon]},{Name:"ChangeTurn",Loop:2}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:1d,Absolute:{Vertical:true}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeMain],Level:12}],[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike1],Level:12}],[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike2],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike3],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike4],Level:12},{Tags:[Skylands,Ground,Blow,SilverSorcerer,Spike5],Level:12}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]}]}
