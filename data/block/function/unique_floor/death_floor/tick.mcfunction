#> block:unique_floor/death_floor/tick
### 即死床処理

execute store result score _ _ run time query gametime

scoreboard players operation _ _ -= @s GameTime
#死亡処理 マジックシールドで無効化
execute if score _ _ matches 40..59 unless score @s MagicShield matches 1.. run function entity:unique_floor/death_floor/death
execute if score _ _ matches 40..59 if score @s MagicShield matches 1000.. run function skill:act/black_mage/magic_shield/activate
execute if score _ _ matches 60.. run scoreboard players operation @s GameTime += _ _

function makeup:entity/unique_floor/death_floor/tick
