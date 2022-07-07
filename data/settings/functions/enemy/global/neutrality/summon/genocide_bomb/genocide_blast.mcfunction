### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'[{"translate":"|","color":"#FF5555","bold":"true","obfuscated":"true"},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#FF55FF"},{"translate":"-=< ","color":"#FFFFFF","bold":"true","obfuscated":"false"},{"translate":"ジェノサイドボム","color":"#FF5555","bold":"true","obfuscated":"false"},{"translate":" >=-","color":"#FFFFFF","bold":"true","obfuscated":"false"},{"translate":"|","color":"#FF55FF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FF5555"}]',Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Player:{Damage:9999d,DamageType:[Global],BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは%2$sの超重力圧縮爆発の衝撃に巻き込まれ1ドットとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:999,Fire:999,Ice:999,Lightning:999,Light:999,Dark:999,Hit:1b},Distance:{Max:6.0d}},{Name:"Kill"}]}
#Function
playsound entity.wither.death neutral @a[distance=..32] ~ ~ ~ 0.4 0.5 0.1
playsound entity.blaze.ambient neutral @a[distance=..32] ~ ~ ~ 0.7 0 0.1
playsound block.end_portal.spawn neutral @a[distance=..32] ~ ~ ~ 0.7 1.5 0.1
playsound entity.generic.explode neutral @a[distance=..32] ~ ~ ~ 0.7 0.5 0.1
playsound block.end_portal_frame.fill neutral @a[distance=..32] ~ ~ ~ 0.7 0.5 0.1
playsound block.ender_chest.open neutral @a[distance=..32] ~ ~ ~ 0.7 0.5 0.1
particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.4 100 force @a[tag=ShowParticles]
particle portal ~ ~0.5 ~ 0 0 0 5 100 force @a[tag=ShowParticles]
particle dust -100000000 0 -10 3 ~ ~0.5 ~ 1.7 1.7 1.7 0.7 100 force @a[tag=ShowParticles]
particle dust -1 -100 100000000 4 ~ ~0.5 ~ 3.5 3.5 3.5 1 100 force @a[tag=ShowParticles]
particle dust 1 -100000000 100000000 2 ~ ~0.5 ~ 1.2 1.2 1.2 0.5 100 force @a[tag=ShowParticles]
particle dust 0 0 0 3 ~ ~0.5 ~ 0.2 0.2 0.2 0 100 force @a[tag=ShowParticles]
