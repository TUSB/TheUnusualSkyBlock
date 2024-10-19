#> player:trigger/food
### 食事トリガー前処理

scoreboard players operation @s LastFoodLevel -= @s FoodLevel
scoreboard players set _ _ -1
scoreboard players operation @s LastFoodLevel *= _ _

### 狩人＜ワイルドヒーリング＞
execute if score @s WildHealing matches 1..3 if score @s LastFoodLevel matches 1.. run function skill:act/hunter/wild_healing/trigger/eat

### トリガーリセット
scoreboard players operation @s LastFoodLevel = @s FoodLevel
scoreboard players reset @s FoodLevel
