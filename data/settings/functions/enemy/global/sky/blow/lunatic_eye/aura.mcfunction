### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:amethyst_block",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,0f],DirectionRange:[230f,0f],Speed:0.7d}]}
#Function
playsound entity.wither.shoot master @a[distance=..40] ~ ~ ~ 1.0 0.5
