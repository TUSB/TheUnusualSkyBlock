### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[Mob,DelayedData,HasAI,TickingRequired,"KeepPose"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PortalCooldown:200}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"ChangeTurn",Set:2},{Name:"ChangeAI",Passenger:{Type:"down",Check:true,Call:[{}]}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Casting","SludgeGarbager"]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:30,Current:30},Call:[{Name:"Damage",Player:{Damage:0.5d,DamageType:[Global],BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは%2$sが投擲した汚泥の化学物質を大量摂取したことによって身体が泥と化した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:5,Percent:true},Distance:{Min:0.1d,Max:6d},AEC:{effects:[{id:"minecraft:slowness",amplifier:5b,duration:60,show_particles:false},{id:"minecraft:invisibility",amplifier:8b,duration:5,show_particles:false},]}}]},{Interval:{Min:31,Max:31,Current:31},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
