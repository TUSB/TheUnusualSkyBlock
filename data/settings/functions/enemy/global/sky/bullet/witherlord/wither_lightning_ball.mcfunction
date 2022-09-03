### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:fireball",ExplosionPower:0b,PortalCooldown:200,Tags:[DelayedData,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.1d,Settings:[{Name:"Facing",Anchor:Eyes,Target:{Look:"Player",Radius:32,IgnoreBlocks:1b}},{Name:"Rotation",Direction:[-45f,0f],DirectionRange:[90f,0f]}]}]}
