### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"デッドリーアロー","color":"#FFFFFF"}',life:1,Fire:30000s,Color:9109504,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnDeath,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[0f,-6f],Speed:1.8d}],Death:[{Name:"Damage",Explosion:3}]}
