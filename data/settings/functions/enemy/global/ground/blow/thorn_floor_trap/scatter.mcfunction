### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"トゲの床ばら撒き","color":"#FF8000","bold":true}',PortalCooldown:20,Tags:[Mob,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[180f,-30f],DirectionRange:[-360f,30f]},{Name:"Direction",Speed:8d,SpeedRange:8d}],Name:"Spawn",Count:8,CountRange:12,SpawnEntities:[[{Tags:[Global,Ground,Blow,ThornFloorTrap,Main],Level:15}]]}]}]}]}
