### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"スターダストボムAEC","color":"#FFFFFF"}',Particle:"minecraft:explosion_emitter",Radius:0.5f,Duration:2,Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",Count:100,SpawnEntities:[[{Tags:[Global,Event,Summon,StardustBomb,Main],Level:1}]]}]}
#Function
playsound minecraft:block.beacon.activate hostile @a[distance=..16] ~ ~ ~ 2 2 0.1
