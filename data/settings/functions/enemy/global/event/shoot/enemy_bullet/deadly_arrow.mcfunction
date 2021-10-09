### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",Tags:[HasAI,CooldownRequired,CallOnTime],CustomName:'{"translate":"デッドリーアロー","color":"#FFFFFF"}',PortalCooldown:120,NoGravity:true,life:1200,Color:9109504,CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}]}
