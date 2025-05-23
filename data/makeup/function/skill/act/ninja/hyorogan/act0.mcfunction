#> makeup:skill/act/ninja/hyorogan/act0
#
# 兵糧丸演出
playsound minecraft:entity.generic.eat player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.burp player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~0.5 ~ 0.7 0.5 0.7 0 20 force
execute rotated ~ 0 run summon minecraft:item ^ ^1.0 ^1 {NoGravity:1b,Item:{id:"minecraft:mushroom_stew",components:{enchantment_glint_override:true,custom_data:{NoHold:1b}}},Age:5980,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:item{item:mushroom_stew} ^ ^1.3 ^1 0 0 0 0.1 20 force
