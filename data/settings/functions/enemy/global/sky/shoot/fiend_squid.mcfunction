### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:squid",Tags:[Mob,HasAI,CooldownRequired,CallOnTimeOut],CustomNameVisible:true,CustomName:'{"translate":"アオリイカ","color":"#FFFFFF"}',Air:32767s,NoGravity:true,PortalCooldown:1600}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."最大HP" set value 20
data modify storage tusb_mob: "遅延ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Turn:[{Target:{Look:"player",Radius:32d},Rotate:[10f,10f]}]}
