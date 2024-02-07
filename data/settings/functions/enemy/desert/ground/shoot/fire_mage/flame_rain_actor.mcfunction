### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"フレイムレイン-actor","color":"#FFFFFF","bold":true}',Invisible:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,FlameRainDangerZone]}]}],Exit:{Time:60,TimeCount:60}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:12d,SpeedRange:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Desert,Ground,Shoot,FireMage,FlameRain],Level:1}],[{Tags:[Desert,Ground,Shoot,FireMage,FlameRainCheck],Level:1}]]},{Name:"Kill"}]}]}]}
