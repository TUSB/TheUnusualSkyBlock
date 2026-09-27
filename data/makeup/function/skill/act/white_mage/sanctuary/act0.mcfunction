#> makeup:skill/act/white_mage/sanctuary/act0
#
# サンクチュアリ発動演出
playsound minecraft:block.beacon.power_select player @a[distance=..16] ~ ~ ~ 0.7 0.5
playsound minecraft:block.beacon.power_select player @a[distance=..16] ~ ~ ~ 0.7 0.51
execute rotated ~ 0 run summon minecraft:item ^ ^0.5 ^ {NoGravity:true,Motion:[0d,0.005d,0d],Item:{id:"minecraft:writable_book",count:1,components:{enchantment_glint_override:1b,custom_data:{NoHold:1b}}},Age:5660,PickupDelay:32767}
