### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Friendly,Shoot,FlarePixely,SlashMarkerInit]}],Tick:[{Name:"Function",Tags:[Global,Friendly,Shoot,SparkPixely,Slash]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]}}
