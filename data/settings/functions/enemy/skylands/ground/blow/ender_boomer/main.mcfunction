### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:enderman",CustomName:'{"translate":"爆弾処理班","color":"#FFFFFF","bold":true}',carriedBlockState:{Name:"minecraft:tnt",Properties:{unstable:"true"}},PersistenceRequired:1b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 10d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.35d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:140,Current:80},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,EnderBoomer,Turn]}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d}],Name:"Function",Tags:[Skylands,Ground,Blow,EnderBoomer,Boom1]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,EnderBoomer,Boom2]}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Damage:[{Name:"Function",Tags:[Skylands,Ground,Blow,EnderBoomer,Tag]}]},{Name:"DelayAction",Tags:["Casting","CrossRing"]}]},{Interval:{Min:24,Max:24,Current:24},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,EnderBoomer,SetTnt1]},{Name:"ChangeAI",Damage:[]}]}]}]}
