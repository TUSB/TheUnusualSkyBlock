### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"シルバーサモナー","color":"#FF0000","bold":true}',PersistenceRequired:1b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,CooldownRequired]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 110
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSummoner,Particle]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:125,Max:275,Current:150},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSummoner,Setblock]}]}]}]}
