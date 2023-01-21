### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ナイトメア・サンタ","color":"#FFFFFF"}',PortalCooldown:10,Tags:[DelayedData,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Execute:"Random",Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftMissile],Level:1}]]},{Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftBounce],Level:1}]]}]}
