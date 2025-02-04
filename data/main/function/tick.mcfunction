#> main:tick
##############################
### 毎ティック処理
##############################

# 現在時刻更新
function main:time/tick

### 1tick遅れ処理
# execute as @e[tag=DelayedTask] at @s run function main:task/delayed

# エリア tick
function area:tick

### プレイヤー tick
execute as @a at @s run function player:tick

### エンティティ tick
function entity:tick

### Mob tick
execute as @e[tag=Mob] at @s run function enemy:tick

### エンティティAI tick
execute as @e[tag=HasAI] at @s run function ai:tick

### 存在する限り毎tick処理呼び出し
# execute as @e[scores={NativeFlag=1..}] at @s run function main:task/native
