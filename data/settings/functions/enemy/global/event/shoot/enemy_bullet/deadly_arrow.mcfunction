### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",Tags:[HasAI,CallOnDeath,CallOnInit],CustomName:'{"translate":"デッドリーアロー","color":"#FFFFFF"}',PortalCooldown:80,NoGravity:true,life:1,Color:9109504,CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,0f],Speed:1.2d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,ManaBlast1B],Level:1}]]}]}
