#> makeup:skill/act/summoner/summon_merchant/act1
playsound minecraft:entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.villager.yes player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.villager.yes player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.villager.yes player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:entity_effect{color:-1} ~ ~0.3 ~ 0.6 1 0.6 1 50 force
particle minecraft:witch ~ ~ ~ 0 0 0 1 40 force
summon minecraft:item ^0.6 ^0.3 ^1 {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5940,PickupDelay:32767}
summon minecraft:item ^0.6 ^0.3 ^-1 {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5938,PickupDelay:32767}
summon minecraft:item ^1.2 ^0.8 ^ {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5936,PickupDelay:32767}
summon minecraft:item ^-0.6 ^0.8 ^1 {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5934,PickupDelay:32767}
summon minecraft:item ^-0.6 ^0.8 ^-1 {NoGravity:true,Motion:[0d,-0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5932,PickupDelay:32767}
summon minecraft:item ^-1.2 ^0.3 ^ {NoGravity:true,Motion:[0d,0.015d,0d],Item:{id:"minecraft:emerald",components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":1}},"minecraft:custom_data":{NoHold:1b}},count:1},Age:5930,PickupDelay:32767}
