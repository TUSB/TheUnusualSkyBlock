### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",Tags:[HasAI,CallOnInit],CustomName:'{"translate":"アローレイン","color":"#FFFFFF"}',PortalCooldown:120,life:1200,Fire:30000s,Color:28596,CustomPotionEffects:[{Id:14b,Amplifier:3b,Duration:3,ShowParticle:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-12f],DirectionRange:[14f,9f],Speed:1.8d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}]}
