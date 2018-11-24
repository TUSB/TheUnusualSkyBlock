##############################
### 召喚オーラ効果取得
##############################

execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:1b}]}] run effect give @a[distance=..32] minecraft:speed 1 4
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:3b}]}] run effect give @a[distance=..32] minecraft:haste 1 5
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:5b}]}] run effect give @a[distance=..32] minecraft:strength 1 9
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:8b}]}] run effect give @a[distance=..32] minecraft:jump_boost 1 9
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:10b}]}] run effect give @a[distance=..32] minecraft:regeneration 1 4
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:11b}]}] run effect give @a[distance=..32] minecraft:resistance 1 3
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:12b}]}] run effect give @a[distance=..32] minecraft:fire_resistance 1 0
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:13b}]}] run effect give @a[distance=..32] minecraft:water_breathing 1 0
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:16b}]}] run effect give @a[distance=..32] minecraft:night_vision 1 0
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:23b}]}] run effect give @a[distance=..32] minecraft:saturation 20 0
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:26b}]}] run effect give @a[distance=..32] minecraft:luck 1 9
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:28b}]}] run effect give @a[distance=..32] minecraft:slow_falling 1 0
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:29b}]}] run effect give @a[distance=..32] minecraft:conduit_power 1 49
execute if entity @e[distance=..32,team=Friendly,type=!player,nbt={ActiveEffects:[{Id:30b}]}] run effect give @a[distance=..32] minecraft:dolphins_grace 1 49
