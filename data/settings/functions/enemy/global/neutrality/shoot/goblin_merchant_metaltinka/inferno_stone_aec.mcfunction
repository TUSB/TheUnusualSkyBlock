### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"炎獄滅石 -集- AEC","color":"#00FF00"}',Particle:"block air",Duration:200,Radius:0.001f,PortalCooldown:65,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"ChangeTurn",Set:2}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:9999,Max:9999,Current:9999},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Event,Function,DarkExplosion,Particle]},{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"「セートーボーエ、ダゾ！」%1$sは商業ゴブリン・メタルティンカの投擲した%2$sのによって使い潰されたマッチになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:50,Dark:50,Hit:true},MP:{MP:30,Percent:true},Distance:{Max:4d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:3b,duration:200,show_particles:false}]}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
#Function
playsound minecraft:block.beacon.activate hostile @a[distance=..32] ~ ~ ~ 0.7 2.0 0
