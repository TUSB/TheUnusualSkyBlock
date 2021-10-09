### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Tags:[HasAI,CallOnInit],CustomName:'{"translate":"スターダストボムAEC","color":"#FFFFFF"}',Particle:"minecraft:explosion_emitter",Radius:0.5f,Duration:2}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",Count:100,SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,StardustBomb],Level:1}]]}]}
#演出
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 2 2 1
