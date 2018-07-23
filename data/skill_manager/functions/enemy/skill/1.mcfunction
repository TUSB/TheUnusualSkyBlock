##############################
### 敵スキル１つ目
##############################

### 深淵様
execute if entity @s[tag=Shinen] run function skill_manager:enemy/shinen/1
### サーヴァント
execute if entity @s[tag=Servant] run function skill_manager:enemy/servant/1
### サテライト
execute if entity @s[tag=Satelite] run function skill_manager:enemy/satelite/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
