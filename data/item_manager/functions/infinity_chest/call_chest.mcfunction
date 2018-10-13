##############################
### 無限チェスト呼び出し
##############################

### 無限チェストを呼び出す
execute if entity @s[nbt={Dimension:0}] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:false,Invulnerable:true,NoGravity:true,Tags:[InfinityChest],CustomName:"\"無限チェスト\""}
execute if entity @s[nbt={Dimension:0}] align xyz positioned ~0.5 ~0.5 ~0.5 run clone 0 20 0 0 20 0 ~ ~ ~ filtered minecraft:shulker_box
execute if entity @s[nbt=!{Dimension:0}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:effect ~ ~ ~ 0 0.1 0 3 100 force
kill @s
