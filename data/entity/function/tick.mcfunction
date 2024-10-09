#> entity:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function entity:one_second

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity
