#> main:tick
##############################
### 毎ティック処理
##############################

# 現在時刻更新
function main:time/tick

# エリア tick
function area:tick

### エンティティ tick
function entity:tick

### Mob tick
execute as @e[tag=Mob] at @s run function enemy:tick

### プレイヤー tick
execute as @a at @s run function player:tick

### エンティティAI tick
execute as @e[tag=HasAI] at @s run function ai:tick

###パーティクル表示判定
# function main:particle/update_tag

### 1tick遅れ処理
# execute as @e[tag=DelayedTask] at @s run function main:task/delayed

### バースト処理
# execute if score $World Burst matches -1 run function skill:burst/condition

### 存在する限り毎tick処理呼び出し
# execute as @e[scores={NativeFlag=1..}] at @s run function main:task/native

### 通常世界脅威島 チェストの上の石は壊れない
# execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] if block 39 7 -556 air if block 39 6 -556 chest run setblock 39 7 -556 infested_deepslate
