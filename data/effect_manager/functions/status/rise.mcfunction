##############################
### 起きた時
##############################

### 体力再設定処理
function effect_manager:status/lift_to_max

### 空腹付与
effect give @s[scores={Hunger=20}] minecraft:hunger 2 100
effect give @s[scores={Hunger=19}] minecraft:hunger 2 120
effect give @s[scores={Hunger=18}] minecraft:hunger 2 140
effect give @s[scores={Hunger=17}] minecraft:hunger 2 160
effect give @s[scores={Hunger=16}] minecraft:hunger 2 180
effect give @s[scores={Hunger=15}] minecraft:hunger 2 200
effect give @s[scores={Hunger=14}] minecraft:hunger 2 220
effect give @s[scores={Hunger=13}] minecraft:hunger 4 120
effect give @s[scores={Hunger=12}] minecraft:hunger 4 130
effect give @s[scores={Hunger=11}] minecraft:hunger 4 140
effect give @s[scores={Hunger=10}] minecraft:hunger 4 150
effect give @s[scores={Hunger=9}] minecraft:hunger 4 160
effect give @s[scores={Hunger=8}] minecraft:hunger 4 170
effect give @s[scores={Hunger=7}] minecraft:hunger 4 180
effect give @s[scores={Hunger=6}] minecraft:hunger 4 190
effect give @s[scores={Hunger=5}] minecraft:hunger 4 200
effect give @s[scores={Hunger=4}] minecraft:hunger 4 210
effect give @s[scores={Hunger=3}] minecraft:hunger 4 220
effect give @s[scores={Hunger=2}] minecraft:hunger 4 230
effect give @s[scores={Hunger=1}] minecraft:hunger 4 240
effect give @s[scores={Hunger=0}] minecraft:hunger 4 250

### レイズ処理
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raised

### フラグ消去
scoreboard players reset @s Hunger
