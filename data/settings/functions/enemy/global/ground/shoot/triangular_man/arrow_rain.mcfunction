### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"アローレイン","color":"#FFFFFF"}',life:1200,Fire:30000s,Color:28596,CustomPotionEffects:[{Id:14b,Amplifier:3b,Duration:3,ShowParticle:0b}],PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 30
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-12f],DirectionRange:[14f,9f],Speed:1.8d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}]}
