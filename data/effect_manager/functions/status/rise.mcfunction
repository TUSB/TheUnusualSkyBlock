##############################
### 起きた時
##############################

### 体力再設定処理
function effect_manager:status/lift_to_max

### 空腹付与
effect give @s[scores={Hunger=20}] minecraft:hunger 2 80
effect give @s[scores={Hunger=19}] minecraft:hunger 3 80
effect give @s[scores={Hunger=18}] minecraft:hunger 3 80
effect give @s[scores={Hunger=17}] minecraft:hunger 4 80
effect give @s[scores={Hunger=16}] minecraft:hunger 4 80
effect give @s[scores={Hunger=15}] minecraft:hunger 5 80
effect give @s[scores={Hunger=14}] minecraft:hunger 5 80
effect give @s[scores={Hunger=13}] minecraft:hunger 6 80
effect give @s[scores={Hunger=12}] minecraft:hunger 6 80
effect give @s[scores={Hunger=11}] minecraft:hunger 7 80
effect give @s[scores={Hunger=10}] minecraft:hunger 7 80
effect give @s[scores={Hunger=9}] minecraft:hunger 8 80
effect give @s[scores={Hunger=8}] minecraft:hunger 8 80
effect give @s[scores={Hunger=7}] minecraft:hunger 9 80
effect give @s[scores={Hunger=6}] minecraft:hunger 9 80
effect give @s[scores={Hunger=5}] minecraft:hunger 10 80
effect give @s[scores={Hunger=4}] minecraft:hunger 10 80
effect give @s[scores={Hunger=3}] minecraft:hunger 11 80
effect give @s[scores={Hunger=2}] minecraft:hunger 11 80
effect give @s[scores={Hunger=1}] minecraft:hunger 12 80
effect give @s[scores={Hunger=0}] minecraft:hunger 12 80

### レイズ処理
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raised

### フラグ消去
scoreboard players reset @s Hunger
