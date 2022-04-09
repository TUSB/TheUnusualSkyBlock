### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"アローレイン","color":"#FFFFFF"}',life:1200,Fire:30000s,Color:28596,CustomPotionEffects:[{Id:14b,Amplifier:3b,Duration:80,ShowParticle:0b}],PortalCooldown:120,Tags:[DelayedData,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 30
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-3f,-8f],DirectionRange:[6f,5f],Speed:1.8d}]}
