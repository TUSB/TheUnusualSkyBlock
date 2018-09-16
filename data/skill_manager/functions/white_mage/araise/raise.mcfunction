##############################
### レイズ発動
##############################

### アイテム散らばり防止
tp @e[distance=..10,type=minecraft:item,nbt={Age:0s}] ~ ~ ~
execute as @e[distance=..10,type=minecraft:item,nbt={Age:0s}] run data merge entity @s {Invulnerable:true,Age:-6000s,PickupDelay:0s,Motion:[0d,0d,0d]}

### TP用設定
execute in overworld run tp @s ~ ~ ~
execute in overworld run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RaisePoint,TickingTask,Initializing],Particle:"minecraft:block minecraft:air",WaitTime:6000}
execute in overworld run tp @e[tag=Initializing,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
scoreboard players operation @e[tag=Initializing,limit=1] Dimension = @s Dimension
tag @e[tag=Initializing,limit=1] remove Initializing

### 描画防止用暗闇
effect give @s minecraft:blindness 1000000 127 true

###---演出---Start
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"レイズ","color":"white","hoverEvent":{"action":"show_text","value":"リスポーン時に死亡した場所に復活する。","color":"white"}},"の効果！"]
playsound minecraft:entity.wither.death master @a[distance=..16] ~ ~ ~ 0.4 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 2
###---演出---End
