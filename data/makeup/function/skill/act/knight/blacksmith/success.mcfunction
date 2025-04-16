#> makeup:skill/act/knight/blacksmith/success
### 鍛冶成功

playsound minecraft:block.anvil.use player @a[distance=..10] ~ ~ ~ 1 0.5
execute rotated ~ 0 run summon minecraft:item ^ ^1.2 ^0.5 {NoGravity:1b,Item:{id:"minecraft:iron_sword",count:1b,components:{enchantment_glint_override:true,custom_data:{NoHold:1b}}},Age:5950,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:happy_villager ^ ^1.2 ^0.5 0.2 0.3 0.2 1 14 force
