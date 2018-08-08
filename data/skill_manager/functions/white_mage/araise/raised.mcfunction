##############################
### レイズリスポーン発動
##############################

### 座標移動
scoreboard players operation $RaisePoint ID = @s ID
execute as @e[tag=RaisePoint] if score @s ID = $RaisePoint ID run tag @s add TargetRaisePoint
execute at @e[tag=TargetRaisePoint,limit=1] run tp @s ~ ~ ~
kill @e[tag=TargetRaisePoint,limit=1]

### ディメンション補正
execute if score @s Dimension matches 100..199 at @s in the_nether run tp @s ~ ~ ~
execute if score @s Dimension matches 200..299 at @s in the_end run tp @s ~ ~ ~

###タグ削除
tag @s remove Raise

###---演出---Start
execute positioned as @s run playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 1 1.5
execute positioned as @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 2
execute positioned as @s rotated ~ 0 run summon minecraft:item ^ ^7 ^1 {NoGravity:true,Motion:[0d,-0.15d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5830,PickupDelay:32767}
execute positioned as @s run particle minecraft:totem_of_undying ~ ~7 ~ 1 1 1 0 50 force
execute positioned as @s run particle minecraft:instant_effect ~ ~0.5 ~ 0 0 0 0.5 100 force
execute positioned as @s run particle minecraft:heart ~ ~ ~ 1 0 1 1 30 force
###---演出---End
