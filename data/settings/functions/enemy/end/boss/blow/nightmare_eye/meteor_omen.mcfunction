### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ナイトメアメテオの予兆","color":"#FFFFFF"}',PortalCooldown:400,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,MeteorWarning],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1},Time:1,TimeCount:1}},{Index:2,Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:25d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,Meteor],Level:1}],[{Tags:[End,Boss,Blow,NightmareEye,MeteorSystem],Level:1}]]},{Name:"Kill"}]}]}]}
