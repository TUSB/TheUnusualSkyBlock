### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:30,Current:30},Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,FlarePixely,SlashTp]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
#Function
playsound block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 1 2 0
playsound item.trident.throw master @a[distance=..32] ~ ~ ~ 1 0 0
