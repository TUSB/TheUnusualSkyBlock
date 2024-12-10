#> block:unique_floor/damage_floor
### ダメージ床処理

execute if score @s Age matches 1.. run effect give @s minecraft:instant_damage 1 2

### 死亡時メッセージ
# function player:trigger/death に移行

function makeup:block/unique_floor/damage_floor

