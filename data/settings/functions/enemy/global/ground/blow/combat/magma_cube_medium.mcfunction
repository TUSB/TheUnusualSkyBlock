### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:magma_cube",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnTimeOut,TickingRequired,HasLootTable,NoLootTableAdd],CustomName:'{"translate":"コンバットマグマキューブ"}',Size:2,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.8d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Combat,MagmaCubeLittle],Level:1}]],Count:2,CountRange:2}],Time:[{Name:"ChangeAI",Death:[{}]}],TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"Function",Tags:[Global,Event,Function,Combat,SearchMagmacube]}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Combat,Ride]},{Name:"Function",Tags:[Global,Event,Function,EtcSound,Lava]}]},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Size:4}},{Name:"Function",Tags:[Global,Event,Function,EtcSound,Lava]},{Name:"Function",Tags:[Global,Event,Function,EtcSound,Eat]},{Name:"Function",Tags:[Global,Event,Function,Combat,Absorb]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",HP:{Add:29}},{Name:"MergeNBT",NBT:{Size:2}},{Name:"Function",Tags:[Global,Event,Function,EtcSound,Lava]}]}],Exit:{Loop:{Max:3,Current:3}}}]}
