### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"迷える魂","color":"#FFFFFF","bold":true}',Invisible:1b,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulRed,ExplosionReadyDirection]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Sky,Shoot,LostSoulRed,Explosion],Level:1}]]},{Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound block.note_block.bit master @a[distance=..64] ~ ~ ~ 4.0 0.5
