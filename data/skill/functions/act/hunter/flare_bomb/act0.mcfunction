##############################
### 照明弾発動
##############################

effect give @a[distance=..32] minecraft:night_vision 180 127
execute if score _ Level matches 2 run effect give @e[distance=..32,tag=Mob] minecraft:glowing 30 127

###演出
function makeup:skill/act/hunter/flare_bomb/act0