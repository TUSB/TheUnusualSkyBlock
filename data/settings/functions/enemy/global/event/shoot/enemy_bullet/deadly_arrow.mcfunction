### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"デッドリーアロー","color":"#FFFFFF"}',life:1,Color:9109504,PortalCooldown:80,Tags:[HasAI,CallOnDeath,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-6f],Speed:1.8d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,ManaBlast1B],Level:1}]]}]}
