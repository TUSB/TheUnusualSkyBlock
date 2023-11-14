### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"フレイマーロー","color":"#FFFFFF"}',life:1200,Fire:30000s,Color:43877,CustomPotionEffects:[{Id:7,Amplifier:0b,Duration:1}],PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.8d}],Tick:[{Settings:[{Name:"Rotation",Direction:[15f,0f]}]}]}
