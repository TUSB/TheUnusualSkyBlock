### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ホウン","color":"#FFFFFF","bold":true}',Silent:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"出身地はポップ〇ター"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Ground,Shoot,Shotzo,Init]}],TurnCount:1,Turn:[{Index:1}]}
