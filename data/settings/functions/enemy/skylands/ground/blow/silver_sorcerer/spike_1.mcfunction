### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:block_display",Tags:[DelayedData,HasAI,"ObsSpike1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {block_state:{Name:"minecraft:crying_obsidian"}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"},{Name:"Function",Tags:[Global,Event,Function,CommonExe,PassengersKill]}]}}
