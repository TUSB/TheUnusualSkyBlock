#> entity:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function entity:one_second

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{entity:{id:"tusb_mob:empty"}}}]

# 飛翔状態の確認とタイマー移行
execute as @e[type=#entity:has_in_ground] run function entity:has_in_ground/transfer_check

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown
execute as @e[type=#entity:has_in_ground,tag=CooldownRequired,tag=!Flying,nbt={life:1159s,inGround:true}] at @s run function entity:cooldown
