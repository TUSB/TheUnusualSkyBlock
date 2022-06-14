### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:husk",CustomName:'{"translate":"獰猛なサーモン","color":"#FF0000","bold":true}',PortalCooldown:7000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1001}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier6/mix",Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:4,Current:4},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:16,Current:16},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:4,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:4,Current:4}}},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:16,Current:16},Call:[{}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:4,Current:4}}}]}
