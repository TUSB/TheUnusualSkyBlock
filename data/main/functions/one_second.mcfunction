##############################
### １秒処理
##############################

### １秒エンティティ召喚
summon minecraft:area_effect_cloud ~0.5 0 ~0.5 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Age:0,WaitTime:20,ReapplicationDelay:2147483647,Duration:0,UUIDMost:16L,UUIDLeast:16L}
setblock ~ 0 ~ minecraft:portal keep
summon minecraft:endermite ~0.5 0 ~0.5 {Lifetime:2394,Tags:[Initialized]}

### 死の宣告処理
execute as @a[scores={DoomCount=1..}] run function effect_manager:doom

### トカルト処理
scoreboard players remove @a[scores={Dimension=16}] TorchCount 1
execute as @a[scores={TorchCount=..0}] run function item_manager:tocult_torch

### 飛翔物読み込み範囲外削除
tag @e[tag=FlyingObject,nbt={PortalCooldown:1}] add Garbage
execute as @e[tag=FlyingObject] run data merge entity @s {PortalCooldown:1}

### デスポーンしない敵デスポーン処理
execute as @e[tag=Mob,tag=!Animal] at @s unless entity @a[distance=128..] run tag @s add Garbage

### ブロック設置敵処理
execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep
execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

### １分処理呼び出し
scoreboard players add $Second Global 1
execute if score $Second Global matches 60 run function main:one_minute

### イベント演出戻し処理
execute if score $Second Global matches -1 run function event_manager:reset_event
