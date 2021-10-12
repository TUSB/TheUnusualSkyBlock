### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",Tags:[HasAI,CallOnInit,CooldownRequired,CallOnTime],CustomName:'{"translate":"アローレイン","color":"#FFFFFF"}',PortalCooldown:120,NoGravity:true,life:1200,Fire:30000s,Color:28596,CustomPotionEffects:[{Id:14b,Amplifier:2b,Duration:3,ShowParticle:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-7f],DirectionRange:[14f,14f],Speed:1.3d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}],Time:[{Name:"Kill"}]}
