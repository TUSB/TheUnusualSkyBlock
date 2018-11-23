##############################
### 敵死亡時処理
##############################

### 敵討伐時処理
function calc_manager:get/pos1
execute if score $Y1 Global matches -10000..275000 unless entity @s[tag=Animal] run function entity_manager:defeat_enemy
### Garbage付与
tag @s add Garbage

### 介錯サヨナラ処理
execute if entity @a[distance=..10,scores={Kaishaku=1..},limit=1] if entity @a[distance=..32,scores={Job=7,Aura=0..}] run scoreboard players operation @s MobHPMax *= $5 Const
execute if entity @a[distance=..10,scores={Kaishaku=1..},limit=1] run function skill_manager:ninja/kaishaku/explode
