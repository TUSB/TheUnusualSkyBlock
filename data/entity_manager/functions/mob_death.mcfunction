##############################
### 敵死亡時処理
##############################

### 敵討伐時処理
function calc_manager:get/pos1
execute if score $Y1 Global matches -10..275 run function entity_manager:defeat_enemy
### Garbage付与
tag @s add Garbage

### 介錯サヨナラ処理
execute if entity @a[distance=..10,scores={Kaishaku=1..},limit=1] run function skill_manager:ninja/kaishaku/explode
