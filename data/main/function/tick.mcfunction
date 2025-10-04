#> main:tick
##############################
### 毎ティック処理
##############################

# 現在時刻更新
function main:time/tick

### 1tick遅れ処理
execute as @e[tag=DelayedTask] at @s run function main:task/delayed

# エリア tick
function area:tick

### プレイヤー tick
execute as @a at @s run function player:tick

### エンティティ tick
function entity:tick

### Mob tick
execute as @e[tag=Mob] at @s run function enemy:tick
### スポナーカート空気時処理
execute as @e[tag=SpawnerHolder] at @s unless block ~ ~ ~ minecraft:spawner run function enemy:break_spawner/

  ### デバッグ用 ###
  execute if data storage main: difficult{world:"debug"} run function debug:ai/usage_rate_1
### エンティティAI tick
execute as @e[tag=HasAI] at @s run function ai:tick
  execute if data storage main: difficult{world:"debug"} run function debug:ai/usage_rate_3

### 存在する限り毎tick処理呼び出し
execute as @e[scores={NativeFlag=1..}] at @s run function main:task/native

### エンティティ削除 - 最後に実行
execute as @e[tag=Garbage] run function entity:garbage_collection
