### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"セキュリティポール・デュアルボディ","color":"#FF0000","bold":true}',NoAI:true,NoGravity:true,Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000,Tags:[DelayedData,HasAI,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:10}}]}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",IsChild:1b,SpawnEntities:[[{Tags:[Global,Ground,Shoot,SecurityPole,Block]}]]},{Name:"Spawn",IsChild:1b,SpawnEntities:[[{Tags:[Global,Ground,Shoot,SecurityPole,Block]}]],Settings:[{Name:"Direction",Direction:[0f,90f],Absolute:{Vertical:true},Speed:2d}]}],Passenger:{Type:"up",Check:false,Call:[{Name:"Kill"}]}}
