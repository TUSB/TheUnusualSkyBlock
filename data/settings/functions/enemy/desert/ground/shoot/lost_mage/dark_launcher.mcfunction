### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Function",Tags:[Desert,Ground,Shoot,LostMage,DarkAim]}]}],Exit:{Time:60,TimeCount:60}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Desert,Ground,Shoot,LostMage,Dark],Level:1}],[{Tags:[Desert,Ground,Shoot,LostMage,DarkDirection],Level:1}]]},{Name:"Kill"}]}]}]}
