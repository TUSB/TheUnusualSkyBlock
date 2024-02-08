### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:block_display",CustomName:'{"translate":"TPC"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.2f,-0.5f],scale:[1f,1f,1f]},Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {block_state:{Name:"minecraft:command_block",Properties:{conditional:"false",facing:"up"}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"ChangeTurn",Set:2},{Name:"ChangeAI",Passenger:{Call:[]}}]},TurnCount:2,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:48,Max:48,Current:48},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Summon,TPC,Makeup1]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Skylands,Ground,Summon,TPC,AlertLine]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{Damage:999d,BypassArmor:true,BypassResistance:true,EPF:0,CanBeBlocked:false,DeathCause:'[{"translate":"%1$sは%2$sに/killを実行されて死んだ。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:7d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Ice]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}],Exit:{Loop:{Max:11,Current:11}}}]}
