#モブの座標にAECを召喚する
summon area_effect_cloud ~ ~ ~ {Tags:[DamageAEC],Duration:1,Age:-1}
execute as @e[tag=DamageAEC,distance=..0.01,limit=1] run data modify entity @s {} merge from storage mob_data: Call.AEC
