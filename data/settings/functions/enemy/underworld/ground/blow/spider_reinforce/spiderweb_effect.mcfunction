### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",DeathLootTable:"empty",Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Kill"}]}
#Function
effect give @e[type=minecraft:player,gamemode=!creative,distance=..2] minecraft:slowness 5 4
playsound block.honey_block.step master @a[distance=..5] ~ ~ ~ 1.0 2.0
