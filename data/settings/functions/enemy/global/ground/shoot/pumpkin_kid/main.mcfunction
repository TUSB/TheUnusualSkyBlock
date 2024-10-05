### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パンプキンキッド","color":"#FF0000","bold":true}',IsBaby:true,ActiveEffects:[{Id:8,Amplifier:10b,Duration:-1},{Id:14,Amplifier:127b,Duration:-1}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s}]},id:"minecraft:golden_hoe",Count:1b},{}],ArmorItems:[{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:0s}]},id:"minecraft:jack_o_lantern",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s身長が低いことが最近の悩み。爆殺してストレスを和らげるのが日課である。","with":[{"translate":"【能力：コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:0,RangeSpeed:30}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:80,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,PumpkinKid,Mortar],Level:1}],[{Tags:[Global,Ground,Shoot,PumpkinKid,MortarAec],Level:1}]]}],MP:15}]}]}
