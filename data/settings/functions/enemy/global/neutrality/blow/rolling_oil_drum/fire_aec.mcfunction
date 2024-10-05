### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Tags:[DelayedData,HasAI,CallOnTick,"NonBurst","Trap"],CustomName:'{"translate":"オイルフレイム","color":"#FF8000","bold":true}'}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"flame",Radius:0.5f,RadiusPerTick:0.008f,Duration:60}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"ChangeAI",Tick:[{Name:"Damage",Mob:{Fire:50},Distance:{Max:1.5d}},{Name:"Damage",Player:{Damage:2d,DamageType:[Fire],BypassArmor:true,DeathCause:'[{"translate":"「ｳｫｰｱｯﾁｰ!」%1$sは%2$sによって可燃性の油の危険性を体感した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1.5d},AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:80,ShowParticles:false}]}}]}]}
#Function
playsound entity.blaze.burn hostile @a[distance=..32] ~ ~ ~ 1.0 0.8 0.01
