### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"脆い骸骨","color":"#FFFF00","bold":true}',Team:"Friendly",AbsorptionAmount:1f,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnDamage,CallOnAttack,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Kill"}],Attack:[{Name:"Kill"}]}
