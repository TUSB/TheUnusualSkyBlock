#> entity:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
execute if score $Ticks Count matches 0 run function entity:one_second

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown

### エンティティ削除 - 最後に実行
execute as @e[tag=Garbage] run function entity:garbage_collection
